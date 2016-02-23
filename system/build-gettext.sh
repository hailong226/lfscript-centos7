#!/bin/bash

rm -rf gettext-0.19.5.1 && tar -xf gettext-0.19.5.1.tar.xz && cd gettext-0.19.5.1

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/gettext-0.19.5.1

make && make check && make install
