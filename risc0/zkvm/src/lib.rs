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

#![doc = include_str!("../README.md")]
#![cfg_attr(not(feature = "std"), no_std)]
#![cfg_attr(not(feature = "std"), feature(alloc_error_handler))]
#![deny(rustdoc::broken_intra_doc_links)]
#![deny(missing_docs)]

extern crate alloc;

#[cfg(feature = "binfmt")]
pub mod binfmt;
#[cfg(feature = "prove")]
mod exec;
#[cfg(any(target_os = "zkvm", doc))]
pub mod guest;
#[cfg(feature = "prove")]
mod opcode;
pub mod serde;
#[cfg(feature = "prove")]
mod session;

pub use anyhow::Result;
pub use risc0_zkvm_platform::{declare_syscall, memory::MEM_SIZE, PAGE_SIZE};

#[cfg(feature = "binfmt")]
pub use self::binfmt::{elf::Program, image::MemoryImage};
#[cfg(feature = "prove")]
pub use self::{
    exec::{Executor, ExecutorEnv, ExecutorEnvBuilder},
    session::{ExitCode, Segment, Session},
};

/// Align the given address `addr` upwards to alignment `align`.
///
/// Requires that `align` is a power of two.
pub const fn align_up(addr: usize, align: usize) -> usize {
    (addr + align - 1) & !(align - 1)
}
