#!/bin/bash

tar -xf mpfr-3.1.3.tar.xz && cd mpfr-3.1.3

patch -Np1 -i ../mpfr-3.1.3-upstream_fixes-1.patch

./configure --prefix=/usr        \
            --disable-static     \
            --enable-thread-safe \
            --docdir=/usr/share/doc/mpfr-3.1.3

make && make html

make check

make install && make install-html
