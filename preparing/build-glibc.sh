#!/bin/bash

tar -xf glibc-2.22.tar.xz && cd glibc-2.22

mkdir -v ../glibc-build
cd ../glibc-build

../glibc-2.22/configure                             \
      --prefix=/tools                               \
      --host=$LFS_TGT                               \
      --build=$(../glibc-2.22/scripts/config.guess) \
      --disable-profile                             \
      --enable-kernel=2.6.32                        \
      --enable-obsolete-rpc                         \
      --with-headers=/tools/include                 \
      libc_cv_forced_unwind=yes                     \
      libc_cv_ctors_header=yes                      \
      libc_cv_c_cleanup=yes

make && make install 

echo 'int main(){}' > dummy.c
$LFS_TGT-gcc dummy.c
readelf -l a.out | grep ': /tools'

rm -v dummy.c a.out

