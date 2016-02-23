#!/bin/bash

tar -xf gmp-6.0.0a.tar.xz && cd gmp-6.0.0 

./configure --prefix=/usr    \
            --enable-cxx     \
            --disable-static \
            --docdir=/usr/share/doc/gmp-6.0.0a

make && make html

make check 2>&1 | tee gmp-check-log

awk '/tests passed/{total+=$2} ; END{print total}' gmp-check-log

make install && make install-html
