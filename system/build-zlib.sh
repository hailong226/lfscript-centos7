#!/bin/bash

tar -xf zlib-1.2.8.tar.xz && cd zlib-1.2.8

./configure --prefix=/usr

make && make check && make install

mv -v /usr/lib/libz.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libz.so) /usr/lib/libz.so
