#!/bin/bash

tar -xf libcap-2.24.tar.xz && cd libcap-2.24

sed -i '/install.*STALIBNAME/d' libcap/Makefile

make && make RAISE_SETFCAP=no prefix=/usr install
chmod -v 755 /usr/lib/libcap.so

mv -v /usr/lib/libcap.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libcap.so) /usr/lib/libcap.so

