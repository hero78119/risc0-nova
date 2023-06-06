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

use alloc::collections::BTreeMap;

use anyhow::{anyhow, bail, Context, Result};
use elf::{endian::LittleEndian, file::Class, ElfBytes};

/// A RISC Zero program
pub struct Program {
    /// The entrypoint of the program
    pub entry: u64,

    /// The initial memory image
    pub image: BTreeMap<u64, u32>,
}

impl Program {
    /// Initialize a RISC Zero Program from an appropriate ELF file
    pub fn load_elf(input: &[u8], max_mem: u64) -> Result<Program> {
        let mut image: BTreeMap<u64, u32> = BTreeMap::new();
        let elf = ElfBytes::<LittleEndian>::minimal_parse(input)?;
        if elf.ehdr.class != Class::ELF64 {
            bail!("Not a 64-bit ELF");
        }
        if elf.ehdr.e_machine != elf::abi::EM_RISCV {
            bail!("Invalid machine type, must be RISC-V");
        }
        if elf.ehdr.e_type != elf::abi::ET_EXEC {
            bail!("Invalid ELF type, must be executable");
        }
        let entry: u64 = elf.ehdr.e_entry.try_into()?;
        if entry >= max_mem || entry % 4 != 0 {
            bail!("Invalid entrypoint");
        }
        let segments = elf.segments().ok_or(anyhow!("Missing segment table"))?;
        if segments.len() > 256 {
            bail!("Too many program headers");
        }
        for segment in segments.iter().filter(|x| x.p_type == elf::abi::PT_LOAD) {
            let file_size: u64 = segment.p_filesz.try_into()?;
            if file_size >= max_mem {
                bail!("Invalid segment file_size");
            }
            let mem_size: u64 = segment.p_memsz.try_into()?;
            if mem_size >= max_mem {
                bail!("Invalid segment mem_size");
            }
            let vaddr: u64 = segment.p_vaddr.try_into()?;
            let offset: u64 = segment.p_offset.try_into()?;
            for i in (0..mem_size).step_by(4) {
                let addr = vaddr.checked_add(i).context("Invalid segment vaddr")?;
                if i >= file_size {
                    // Past the file size, all zeros.
                    image.insert(addr, 0);
                } else {
                    let mut word = 0;
                    // Don't read past the end of the file.
                    let len = std::cmp::min(file_size - i, 4);
                    for j in 0..len {
                        let offset = (offset + i + j) as usize;
                        let byte = input.get(offset).context("Invalid segment offset")?;
                        word |= (*byte as u32) << (j * 8);
                    }
                    image.insert(addr, word);
                }
            }
        }
        // patch below symbols to `ret` assembly
        // refer https://github.com/ethereum-optimism/cannon/blob/32c76db43dc4b5fb25f49ba8fbdb84fed8e5615a/mipsevm/patch.go#L66
        let (symtab, strtab) = elf
            .symbol_table()
            .expect("Failed to read symbol table")
            .expect("Failed to find strtab table");
        symtab.iter().for_each(|entry| {
            let symbol_name = strtab.get(entry.st_name as usize).unwrap();
            match symbol_name {
                "runtime.gcenable"
                | "runtime.init.5"  // patch out: init() { go forcegchelper() }
                | "runtime.main.func1" // patch out: main.func() { newm(sysmon, ....) }
                | "runtime.deductSweepCredit" // uses floating point nums and interacts with gc we disabled
                | "runtime.(*gcControllerState).commit"
                // these prometheus packages rely on concurrent background things. We cannot run those.
                | "github.com/prometheus/client_golang/prometheus.init"
                | "github.com/prometheus/client_golang/prometheus.init.0"
                | "github.com/prometheus/procfs.init"
                | "github.com/prometheus/common/model.init"
                | "github.com/prometheus/client_model/go.init"
                | "github.com/prometheus/client_model/go.init.0"
                | "github.com/prometheus/client_model/go.init.1"
                // skip flag pkg init, we need to debug arg-processing more to see why this fails
                | "flag.init"
                | "runtime.fastexprand" // for mcache profiling, got float point inside
                | "runtime.getRandomData" // we do not need randomness. Besides it got os.open/os.read
                // We need to patch this out, we don't pass float64nan because we don't support floats
                | "runtime.initsig" // we dont need init signal since target on baremental env https://github.com/golang/go/blob/512361fb1fa805f10f183e0b96248e523e68c192/src/runtime/signal_unix.go#LL114C6-L114C13
                | "runtime.check"
                | "runtime.doInit"  // patch out doInit https://github.com/golang/go/blob/512361fb1fa805f10f183e0b96248e523e68c192/src/runtime/proc.go#L198, since it got float point inside
                // | "runtime.lock2" // another choice is implement lock, which just need to implement `amoswap.w.aq`,
                // | "runtime.args"
                // | "runtime.osinit"
                // | "runtime.schedinit"
                => {
                    println!(
                        "symbol_name: {:?}, st_value {:08x}, image.get(key): {:08x}",
                        symbol_name,
                        entry.st_value,
                        image.get(&entry.st_value).unwrap(),
                    );
                    image.insert(entry.st_value, 0x00008067); // ret, immediate return
                    ()
                }
                _ => (),
            }
        });
        // common.symtab.iter().map(|f| f)
        Ok(Program { entry, image })
    }
}
