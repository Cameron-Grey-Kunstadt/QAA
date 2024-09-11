#!/usr/bin/env python
import argparse

parser = argparse.ArgumentParser()
parser.add_argument('-f')
parser.add_argument('-g')
args = parser.parse_args()

sam_file = args.f
grep = args.g

mapped_count: int = 0
unmapped_count: int = 0

with open(sam_file) as fh:
    for line in fh:
        # If the line is not a header line, get the bitwise flag, do the comparison, and increment correct counter
        if line.startswith(grep):
            mapped = False
            primary = False

            groups = line.split('\t')
            flag = int(groups[1])

            mapped = ((flag & 4) != 4)
            primary = (((flag & 256) != 256))

            if mapped and primary:
                mapped_count += 1
            elif not mapped and primary:
                unmapped_count += 1

print("Mapped Reads:", mapped_count)
print("Unmapped Reads:", unmapped_count)
