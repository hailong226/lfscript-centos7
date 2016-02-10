#!/bin/bash

tar -xf linux-4.2.tar.xz && cd linux-4.2

 make mrproper
make INSTALL_HDR_PATH=dest headers_install
cp -rv dest/include/* /tools/include
