#!/bin/bash

mkdir -pv gcc-libstdc++-build && cd gcc-libstdc++-build

../gcc-5.2.0/libstdc++-v3/configure \
    --host=$LFS_TGT                 \
    --prefix=/tools                 \
    --disable-multilib              \
    --disable-nls                   \
    --disable-libstdcxx-threads     \
    --disable-libstdcxx-pch         \
    --with-gxx-include-dir=/tools/$LFS_TGT/include/c++/5.2.0

make && make install
