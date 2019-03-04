import os
import sys
import struct

filename = os.path.expanduser(sys.argv[1])
content = open(filename, "rb").read()
print("RIFF: ", content[:4])
size = struct.unpack("@i", content[4:8])
print("size: ", size)

content = content[8:]
print("WAVE: ", content[:4])
print("ckID: ", content[4:8])
print("cksize: ", struct.unpack("@i", content[8:12]))
print("wFormatTag: %04x" % struct.unpack('@h', content[12:14]))
print("nChannes: ", struct.unpack('@h', content[14:16]))
print("nSamplePerSec: ", struct.unpack('@i', content[16:20]))
print("nAvgBytesPerSec: ", struct.unpack('@i', content[20:24]))
print("nBlockAlign: ", struct.unpack('@h', content[24:26]))
print("wBitsPerSample: ", struct.unpack('@h', content[26:28]))

print("==================")
data = content[28:]
print(data[:4])
print(struct.unpack("@i", data[4:8]))
samples = data[8:]

print(len(samples))
for n in range(0, len(samples), 2):
  s = struct.unpack("@h", samples[n:n+2])[0]
  print(s)
