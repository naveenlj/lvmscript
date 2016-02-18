#!/bin/sh
# Script to create a physical volume in LVM
echo "enter the devices to create the physical volume"
read a b c d
pvcreate /dev/$a /dev/$b /dev/$c /dev/$d
echo "following confirms the pv is created"
pvs



