#!/bin/bash
# Script to create the  filesystem in LVM
echo "enter the filesystem type following by the vg name and lv name "
read a b c
if [ $a = ext3 ]; then
 mkfs -t ext3 /dev/$b/$c ; ls -lt /dev/$b/$c
else
 mkfs -t ext2 /dev/$b/$c ; /dev/$b/$c
fi
