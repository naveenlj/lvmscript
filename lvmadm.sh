#!/bin/bash
# Version:1.0
# Declare variable choice and assign value 9
choice=9
# Print to stdout
 echo "1. Display existing LV's PV's VG's info"
 echo "2. Display the devices available to create PV's"
 echo "3. Create Physical Volume"
 echo "4. Create Volume Group"
 echo "5. Create Logical Volume"
 echo "6. Create filesystem "
 echo "7. Extend existing filesystem "
 echo "8. mount  filesystem "
 echo -n "Please choose a word [1,2,3,4,5,6,7 or 8]? "
# Loop while the variable choice is equal 9
# bash while loop
while [ $choice -eq 9 ]; do

# read user input
read choice
# bash nested if/else
if [ $choice -eq 1 ] ; then

        lvm_display.sh

else

        if [ $choice -eq 2 ] ; then
    echo "=====Existing physical Vols=====" ; pvs ; echo "============" ; fdisk -l | grep -i lvm
        else

                if [ $choice -eq 3 ] ; then
                        /home/pilankar/LVM_scripts/pvc.sh
                else
                if [ $choice -eq 4 ] ; then
                        /home/pilankar/LVM_scripts/vgc.sh
                else
                if [ $choice -eq 5 ] ; then
                        /home/pilankar/LVM_scripts/lvc.sh
                else
                if [ $choice -eq 6 ] ; then
                        /home/pilankar/LVM_scripts/fsc.sh
                else
                if [ $choice -eq 7 ] ; then
                        /home/pilankar/LVM_scripts/lv_fs_resize.sh
                else
                if [ $choice -eq 8 ] ; then
                        /home/pilankar/LVM_scripts/mount.sh
                else
                        echo "Please make a choice between 1-8 !"
                        echo "1. Display existing LV's PV's VG's info"
                        echo "2. Display the devices available to create PV's"
                        echo "3. Create Physical Volume"
                        echo "4. Create Volume Group"
                        echo "5. Create Logical Volume"
                        echo "6. Create filesystem "
                        echo "7. Extend existing filesystem "
                        echo "8. mount  filesystem "
                        echo -n "Please choose a word [1,2,3,4,5,6,7 or 8]? "
                        choice=9
                fi
        fi
fi
fi
fi
fi
fi
fi
done
