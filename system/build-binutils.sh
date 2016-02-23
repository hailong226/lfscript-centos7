#!/bin/bash

rm -rf binutils-2.25.1/ binutils-build/ && tar -jxf binutils-2.25.1.tar.bz2 && cd binutils-2.25.1

expect -c "spawn ls"

mkdir -v ../binutils-build
cd ../binutils-build

../binutils-2.25.1/configure --prefix=/usr   \
                           --enable-shared \
                           --disable-werror

make tooldir=/usr

make check

make tooldir=/usr install
