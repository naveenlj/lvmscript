#!/bin/sh
# Script to create the  volume group in LVM
echo "enter the volume group name followed by the devices to create the  volume group "
read a b c d e
vgcreate $a /dev/$b /dev/$c /dev/$d /dev/$e
echo "following confirms the volume group is created"
vgs
