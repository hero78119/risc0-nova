
import sys

formatStr = """pub const HASH_ELF: &[u8] = &[{}];
pub const HASH_ID: [u32; 8] = [{}];
pub const HASH_PATH: &str = r#""#;
"""
with open(sys.argv[1], "rb") as in_file:
    with open(sys.argv[2], "w") as out:
        in_bytes = bytearray(in_file.read())
        out.write(formatStr.format(",".join(str(v) for v in list(in_bytes)), ""))
