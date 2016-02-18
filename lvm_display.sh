#!/usr/bin/sh
# Script to display the current pv's lv's and vg's
pvs ; echo "=======================" ; lvs ; echo "============================="  ; vgs ; echo "============================="

pvdisplay ; echo "=======================" ; lvdisplay ; echo "============================="  ; vgdisplay ; echo "============================="
