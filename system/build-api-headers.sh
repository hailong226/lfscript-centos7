#!/bin/bash

rm -rf linux-4.2 && tar -xf linux-4.2.tar.xz && cd linux-4.2

make mrproper

make INSTALL_HDR_PATH=dest headers_install
find dest/include \( -name .install -o -name ..install.cmd \) -delete
cp -rv dest/include/* /usr/include
