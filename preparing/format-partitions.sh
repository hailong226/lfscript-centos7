#!/bin/bash

# /
mkdir -pv $LFS
mkfs.ext4 /dev/sdb2
mount -v -t ext4 /dev/sdb2 $LFS

# /boot
mkdir -pv $LFS/boot
mkfs.ext4 /dev/sdb1
mount -v -t ext4 /dev/sdb1 $LFS/boot
