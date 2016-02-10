#!/bin/bash

tar -xf util-linux-2.27.tar.xz && cd util-linux-2.27

./configure --prefix=/tools                \
            --without-python               \
            --disable-makeinstall-chown    \
            --without-systemdsystemunitdir \
            PKG_CONFIG=""

make && make install
