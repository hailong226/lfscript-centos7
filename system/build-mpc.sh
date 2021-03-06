#!/bin/bash

tar -xf mpc-1.0.3.tar.gz && cd mpc-1.0.3

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/mpc-1.0.3

make && make html

make check

make install && make install-html
