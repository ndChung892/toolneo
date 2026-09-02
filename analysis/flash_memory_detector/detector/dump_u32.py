import argparse
import struct
from run_detector import ProcessMemoryReader

p = argparse.ArgumentParser()
p.add_argument("--pid", type=int, required=True)
p.add_argument("--address", type=lambda v: int(v, 0), required=True)
p.add_argument("--size", type=lambda v: int(v, 0), default=0x400)
a = p.parse_args()
r = ProcessMemoryReader(a.pid, include_mapped=True)
try:
    data = r.read_region(a.address, a.size)
finally:
    r.close()
for off in range(0, len(data) - 3, 4):
    print(f"{off:04X}: {struct.unpack_from('<I', data, off)[0]:08X}")
