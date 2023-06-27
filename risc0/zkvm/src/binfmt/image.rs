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
use risc0_zkvm_platform::memory::{MEM_SIZE, PAGE_TABLE};
use rrs_lib::{
    memories::{MemorySpace, VecMemory},
    MemAccessSize, Memory,
};

use crate::binfmt::elf::Program;

/// Compute `ceil(a / b)` via truncated integer division.
const fn div_ceil(a: u64, b: u64) -> u64 {
    (a + b - 1) / b
}

/// Round `a` up to the nearest multipe of `b`.
const fn round_up(a: u64, b: u64) -> u64 {
    div_ceil(a, b) * b
}

/// An image of a zkVM guest's memory
///
/// This is an image of the full memory state of the zkVM, including the data,
/// text, inputs, page table, and system memory. In addition to the memory image
/// proper, this includes some metadata about the page table.
pub struct MemoryImage {
    /// The memory image as a vector of bytes
    // pub buf: Vec<u8>,

    /// memorySpace to support memory segment across different region
    pub memory_space: MemorySpace,
}

impl MemoryImage {
    /// Construct the initial memory image for `program`
    ///
    /// The result is a MemoryImage with the ELF of `program` loaded (but
    /// execution not yet begun), and with the page table Merkle tree
    /// constructed.
    pub fn new(program: &Program, page_size: u64, memory_data: Option<Vec<u8>>) -> Self {
        // let mut buf = vec![0_u8; MEM_SIZE];

        let mut memory_space = MemorySpace::new();
        let _ = memory_space
            .add_memory(
                0,
                MEM_SIZE as u64,
                Box::new(VecMemory::new(vec![0_u64; MEM_SIZE / 8])),
            )
            .unwrap();
        // Load the ELF into the memory image.
        let program_region = memory_space.get_memory_mut::<VecMemory>(0).unwrap();
        for (addr, data) in program.image.iter() {
            program_region.write_mem(*addr, MemAccessSize::Word, u64::from(*data));
        }
        // add memory region `0xd0000deadbeef` as playground
        let _ = memory_space
            .add_memory(
                0xd0000deadbee0,
                MEM_SIZE as u64,
                Box::new(VecMemory::new(vec![0_u64; MEM_SIZE / 8])),
            )
            .unwrap();

        // Load the ELF into the memory image.
        let _ = memory_data.map(|memory_data| {
            println!("first length {:?}", memory_data[..4].to_vec());
            let memory_data = memory_data
                .chunks(8)
                .map(|chunk| {
                    let mut chunk = chunk.to_vec();
                    if chunk.len() < 8 {
                        chunk.resize(8, 0)
                    }
                    u64::from_le_bytes(chunk.try_into().unwrap())
                })
                .collect::<Vec<u64>>();
            // memory data space
            let _ = memory_space
                .add_memory(
                    0x100000000000,
                    memory_data.len() as u64 * 8 as u64,
                    Box::new(VecMemory::new(memory_data)),
                )
                .unwrap();
        });

        // Compute the page table hashes except for the very last root hash.
        Self { memory_space }
    }
}
