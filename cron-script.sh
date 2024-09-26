#!/bin/bash
echo " echo 1 >  /proc/sys/vm/drop_caches"
echo " echo 2 >  /proc/sys/vm/drop_caches"
echo " echo 3 >  /proc/sys/vm/drop_caches"
sync && echo 1 > /proc/sys/vm/drop_caches
sync && echo 2 > /proc/sys/vm/drop_caches
sync && echo 3 > /proc/sys/vm/drop_caches
swapoff -a
sudo swapon /swapfile
swapon -a
