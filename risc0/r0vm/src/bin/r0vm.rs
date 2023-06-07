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

use std::{array, fs, path::PathBuf};

use clap::Parser;
use risc0_zkvm::{Executor, ExecutorEnv};

/// Runs a RISC-V ELF binary within the RISC Zero ZKVM.
#[derive(Parser)]
#[clap(about, version, author)]
struct Args {
    /// The ELF file to run
    #[clap(long)]
    elf: PathBuf,

    /// Receipt output file.
    #[clap(long)]
    receipt: Option<PathBuf>,

    /// File to read initial input from.
    #[clap(long)]
    initial_input: Option<PathBuf>,

    /// Display verbose output.
    #[clap(short, long, action = clap::ArgAction::Count)]
    verbose: u8,

    /// Add environment vairables in the form of NAME=value.
    #[clap(long, action = clap::ArgAction::Append)]
    env: Vec<String>,
}

fn main() {
    env_logger::init();

    let args = Args::parse();
    let elf_contents = fs::read(&args.elf).unwrap();

    if args.verbose > 0 {
        eprintln!(
            "Read {} bytes of ELF from {}",
            elf_contents.len(),
            args.elf.display()
        );
    }

    let mut builder = ExecutorEnv::builder();

    for var in args.env.iter() {
        let (name, value) = var
            .split_once('=')
            .expect("Environment variables should be of the form NAME=value");
        builder.env_var(name, value);
    }

    if let Some(input) = args.initial_input.as_ref() {
        builder.stdin(fs::File::open(input).unwrap());
    }

    let env = builder.build();
    let mut exec = Executor::from_elf(env, &elf_contents).unwrap();
    let session = match exec.run() {
        Ok(session) => session,
        Err(err) => {
            let regs: [u64; 32] = exec.monitor.load_registers(array::from_fn(|idx| idx));
            regs.iter().enumerate().for_each(|(idx, value)| {
                println!("value loaded {:08x}, idx: {:?}", value, idx,);
            });
            panic!("error {:?}", err)
        }
    };

    // let receipt = session.prove(hal.as_ref(), &eval).unwrap();

    // let receipt_data = encode_receipt(&receipt);
    // if let Some(receipt_file) = args.receipt.as_ref() {
    //     fs::write(receipt_file, receipt_data.as_slice()).expect("Unable to
    // write receipt file");     if args.verbose > 0 {
    //         eprintln!(
    //             "Wrote {} bytes of receipt to {}",
    //             receipt_data.len(),
    //             receipt_file.display()
    //         );
    //     }
    // }
}
