#!/bin/bash

tar -jxf binutils-2.25.1.tar.bz2

mkdir -pv binutils-build && cd binutils-build

../binutils-2.25.1/configure --prefix=/tools \
    --with-sysroot=$LFS \
    --with-lib-path=/tools/lib \
    --target=$LFS_TGT --disable-nls \
    --disable-werror && make

case $(uname -m) in
  x86_64) mkdir -v /tools/lib && ln -sv lib /tools/lib64 ;;
esac

make install 
