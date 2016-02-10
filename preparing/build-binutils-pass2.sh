#!/bin/bash

rm -rf binutils-build/ binutils-2.25.1 && tar -jxf binutils-2.25.1.tar.bz2

mkdir -pv binutils-build && cd binutils-build

CC=$LFS_TGT-gcc                \
AR=$LFS_TGT-ar                 \
RANLIB=$LFS_TGT-ranlib         \
../binutils-2.25.1/configure     \
    --prefix=/tools            \
    --disable-nls              \
    --disable-werror           \
    --with-lib-path=/tools/lib \
    --with-sysroot

make && make install 

make -C ld clean
make -C ld LIB_PATH=/usr/lib:/lib
cp -v ld/ld-new /tools/bin
