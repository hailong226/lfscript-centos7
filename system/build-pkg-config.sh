#!/bin/bash

tar -xf pkg-config-0.28.tar.gz && cd pkg-config-0.28

./configure --prefix=/usr        \
            --with-internal-glib \
            --disable-host-tool  \
            --docdir=/usr/share/doc/pkg-config-0.28

make && make check && make install
