#!/bin/sh
echo "enter the size followed by the LV and VG name to create the  logical volume "
read a b c
lvcreate -L $a -n $b /dev/$c
echo "following confirms the logical volume is created"
lvs
