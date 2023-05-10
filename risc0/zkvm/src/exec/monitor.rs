// Copyright 2023 RISC Zero, Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

use std::{array, collections::BTreeSet};

use anyhow::Result;
use risc0_zkp::core::hash::sha::BLOCK_BYTES;
use risc0_zkvm_platform::{memory::SYSTEM, DOUBLE_WORD_SIZE, PAGE_SIZE, WORD_SIZE};
use rrs_lib::{MemAccessSize, Memory};

use super::{OpCodeResult, SyscallRecord};
use crate::MemoryImage;

/// The number of blocks that fit within a single page.
const BLOCKS_PER_PAGE: usize = PAGE_SIZE / BLOCK_BYTES;

const SHA_INIT: usize = 5;
const SHA_LOAD: usize = 16;
const SHA_MAIN: usize = 52;

const fn cycles_per_page(blocks_per_page: usize) -> usize {
    1 + SHA_INIT + (SHA_LOAD + SHA_MAIN) * blocks_per_page
}

#[derive(Eq, Ord, PartialEq, PartialOrd)]
struct MemStore {
    addr: u64,
    data: u8,
}

pub struct MemoryMonitor {
    pub image: MemoryImage,
    // pub faults: PageFaults,
    // pending_faults: PageFaults,
    pending_writes: BTreeSet<MemStore>,
    cycle: usize,
    op_result: Option<OpCodeResult>,
    pub syscalls: Vec<SyscallRecord>,
}

impl MemoryMonitor {
    pub fn new(image: MemoryImage) -> Self {
        Self {
            image,
            // faults: PageFaults::default(),
            // pending_faults: PageFaults::default(),
            pending_writes: BTreeSet::new(),
            cycle: 0,
            op_result: None,
            syscalls: Vec::new(),
        }
    }

    pub fn load_u8(&mut self, addr: u64) -> u8 {
        let info = &self.image.info;
        // log::debug!("load_u8: 0x{addr:08x}");
        // self.pending_faults.include(info, addr, IncludeDir::Read);
        self.image.buf[addr as usize]
    }

    pub fn load_u16(&mut self, addr: u64) -> u16 {
        assert_eq!(addr % 2, 0, "unaligned load");
        u16::from_le_bytes(self.load_array(addr))
    }

    pub fn load_u32(&mut self, addr: u64) -> u32 {
        assert_eq!(addr % WORD_SIZE as u64, 0, "unaligned load");
        // log::debug!("load_u32: 0x{addr:08x}");
        u32::from_le_bytes(self.load_array(addr))
    }

    pub fn load_u64(&mut self, addr: u64) -> u64 {
        assert_eq!(addr % DOUBLE_WORD_SIZE as u64, 0, "unaligned load");
        // log::debug!("load_u32: 0x{addr:08x}");
        u64::from_le_bytes(self.load_array(addr))
    }

    pub fn load_array<const N: usize>(&mut self, addr: u64) -> [u8; N] {
        array::from_fn(|idx| self.load_u8(addr + idx as u64))
    }

    pub fn load_register(&mut self, idx: usize) -> u64 {
        println!(
            "register value: {:08x}, value loaded {:08x}",
            get_register_addr(idx),
            self.load_u64(get_register_addr(idx))
        );
        self.load_u64(get_register_addr(idx))
    }

    pub fn load_registers<const N: usize>(&mut self, idxs: [usize; N]) -> [u64; N] {
        idxs.map(|idx| self.load_register(idx))
    }

    pub fn load_string(&mut self, mut addr: u64) -> Result<String> {
        let mut s: Vec<u8> = Vec::new();
        loop {
            let b = self.load_u8(addr);
            if b == 0 {
                break;
            }
            s.push(b);
            addr += 1;
        }
        String::from_utf8(s).map_err(anyhow::Error::msg)
    }

    pub fn store_u8(&mut self, addr: u64, data: u8) {
        let info = &self.image.info;
        // self.pending_faults.include(info, addr, IncludeDir::Read);
        // self.pending_faults.include(info, addr, IncludeDir::Write);
        self.pending_writes.insert(MemStore { addr, data });
    }

    pub fn store_u16(&mut self, addr: u64, data: u16) {
        assert_eq!(addr % 2, 0, "unaligned store");
        self.store_region(addr, &data.to_le_bytes());
    }

    pub fn store_u32(&mut self, addr: u64, data: u32) {
        assert_eq!(addr % WORD_SIZE as u64, 0, "unaligned store");
        self.store_region(addr, &data.to_le_bytes());
    }

    pub fn store_u64(&mut self, addr: u64, data: u64) {
        assert_eq!(addr % DOUBLE_WORD_SIZE as u64, 0, "unaligned store");
        println!("before store: addr {:08x}, data: {:08x}", addr, data);
        self.store_region(addr, &data.to_le_bytes());
    }

    pub fn store_region(&mut self, addr: u64, slice: &[u8]) {
        slice
            .iter()
            .enumerate()
            .for_each(|(i, x)| self.store_u8(addr + i as u64, *x));
    }

    pub fn store_register(&mut self, idx: usize, data: u64) {
        self.store_u64(get_register_addr(idx), data);
    }

    pub fn save_op(&mut self, op_result: OpCodeResult) {
        self.op_result = Some(op_result);
    }

    pub fn restore_op(&self) -> Option<OpCodeResult> {
        self.op_result.clone()
    }

    // commit all pending activity
    pub fn commit(&mut self) {
        // cycle: usize) {
        for op in self.pending_writes.iter() {
            if op.addr as usize >= self.image.buf.len() {
                println!("addr out of bound, addr {:16x}", op.addr);
            }
            self.image.buf[op.addr as usize] = op.data;
        }
        self.pending_writes.clear();
        // self.faults.append(&mut self.pending_faults);
        // self.cycle = cycle;
        let op_result = self.op_result.take().unwrap();
        if let Some(syscall) = op_result.syscall {
            self.syscalls.push(syscall);
        }
        // self.faults.dump();
    }

    // pub fn pending_page_reads(&self) -> Vec<u32> {
    //     self.pending_faults
    //         .reads
    //         .difference(&self.faults.reads)
    //         .into_iter()
    //         .cloned()
    //         .collect()
    // }

    // pub fn total_page_read_cycles(&self) -> usize {
    //     self.compute_page_cycles(self.faults.reads.union(&self.pending_faults.
    // reads)) }

    // pub fn total_fault_cycles(&self) -> usize {
    //     let reads = self.compute_page_cycles(self.faults.reads.iter());
    //     let writes = self.compute_page_cycles(self.faults.writes.iter());
    //     reads + writes
    // }

    // pub fn total_pending_fault_cycles(&self) -> usize {
    //     let reads =
    // self.compute_page_cycles(self.faults.reads.union(&self.pending_faults.
    // reads));     let writes =
    //         self.compute_page_cycles(self.faults.writes.union(&self.
    // pending_faults.writes));     reads + writes
    // }

    // pub fn pending_page_read_cycles(&self) -> usize {
    //     self.compute_page_cycles(self.pending_page_reads().iter())
    // }

    // fn compute_page_cycles<'a, I: Iterator<Item = &'a u32>>(&self, page_idxs: I)
    // -> usize {     let root_idx = self.image.info.root_idx;
    //     let num_root_entries = self.image.info.num_root_entries as usize;
    //     page_idxs.fold(0, |acc, page_idx| {
    //         acc + if *page_idx == root_idx {
    //             cycles_per_page(num_root_entries / 2)
    //         } else {
    //             cycles_per_page(BLOCKS_PER_PAGE)
    //         }
    //     })
    // }

    pub fn clear_segment(&mut self) {
        // self.faults.clear();
        self.syscalls.clear();
    }

    pub fn clear_session(&mut self) {
        self.clear_segment();
        // self.pending_faults.clear();
        self.pending_writes.clear();
    }
}

impl Memory for MemoryMonitor {
    fn read_mem(&mut self, addr: u64, size: MemAccessSize) -> Option<u64> {
        match size {
            MemAccessSize::Byte => Some(self.load_u8(addr) as u64),
            MemAccessSize::HalfWord => Some(self.load_u16(addr) as u64),
            MemAccessSize::Word => Some(self.load_u32(addr) as u64),
            MemAccessSize::DoubleWord => Some(self.load_u64(addr)),
        }
    }

    fn write_mem(&mut self, addr: u64, size: MemAccessSize, store_data: u64) -> bool {
        match size {
            MemAccessSize::Byte => self.store_u8(addr, store_data as u8),
            MemAccessSize::HalfWord => self.store_u16(addr, store_data as u16),
            MemAccessSize::Word => self.store_u32(addr, store_data as u32),
            MemAccessSize::DoubleWord => self.store_u64(addr, store_data),
        };
        true
    }
}

impl MemoryMonitor {
    // fn get_cycle(&self) -> usize {
    //     self.cycle + self.pending_page_read_cycles()
    // }

    // fn load_u64(&mut self, addr: u64) -> u64 {
    //     MemoryMonitor::load_u64(self, addr)
    // }

    // fn load_u32(&mut self, addr: u64) -> u32 {
    //     MemoryMonitor::load_u32(self, addr)
    // }

    // fn load_u8(&mut self, addr: u64) -> u8 {
    //     MemoryMonitor::load_u8(self, addr)
    // }
}

fn get_register_addr(idx: usize) -> u64 {
    (SYSTEM.start() + idx * DOUBLE_WORD_SIZE) as u64
}

enum IncludeDir {
    Read,
    Write,
}

// impl PageFaults {
//     fn include(&mut self, info: &PageTableInfo, addr: u64, dir: IncludeDir) {
//         let mut addr = addr;
//         loop {
//             let page_idx = info.get_page_index(addr);
//             let entry_addr = info.get_page_entry_addr(page_idx);
//             match dir {
//                 IncludeDir::Read => self.reads.insert(page_idx),
//                 IncludeDir::Write => self.writes.insert(page_idx),
//             };
//             if page_idx == info.root_idx {
//                 break;
//             }
//             addr = entry_addr;
//         }
//     }

//     fn clear(&mut self) {
//         self.reads.clear();
//         self.writes.clear();
//     }

//     fn append(&mut self, rhs: &mut Self) {
//         self.reads.append(&mut rhs.reads);
//         self.writes.append(&mut rhs.writes);
//     }

//     #[allow(dead_code)]
//     fn dump(&self) {
//         log::debug!("PageFaultInfo");
//         log::debug!("  reads>");
//         for idx in self.reads.iter().rev() {
//             log::debug!("  0x{:08X}", idx);
//         }
//         log::debug!("  writes>");
//         for idx in self.writes.iter() {
//             log::debug!("  0x{:08X}", idx);
//         }
//     }
// }
