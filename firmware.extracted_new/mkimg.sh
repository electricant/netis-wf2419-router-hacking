#!/bin/bash

# Create squashfs filesystem NOTE: replace this with your directory
/home/pol/Progetti/netis_wf2419i/squashfs/squashfs-tools/mksquashfs-lzma \
	squashfs-root new_D0000.squashfs -b 65536 -all-root -noappend -be

# Overwrite filesystem in the old image
cp ../firmware_orig.bin firmware_pwned.bin
dd if=new_D0000.squashfs of=firmware_pwned.bin bs=1 seek=$((0xD0000)) \
	conv=notrunc
echo Original:
binwalk ../firmware_orig.bin
echo New:
binwalk firmware_pwned.bin
