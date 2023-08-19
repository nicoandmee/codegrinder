#!/usr/bin/env python3

import glob
import subprocess
import sys

suffix = sys.argv[1]
cmd = sys.argv[2:]

# get the list of input files to process
infiles = sorted(glob.glob(f'inputs/*.{suffix}'))

first = True
for infile in infiles:
    if not first:
        print()
    first = False

    outfile = f"{infile[:-len(f'.{suffix}')]}.expected"

    c = ['python3', 'scripts/inout-stepper.py', infile, outfile]
    c.extend(cmd)

    # run the program to get the actual output
    print(' '.join(c))
    status = subprocess.call(c)
    if status != 0:
        sys.exit(status)
