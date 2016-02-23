#!/bin/bash

tar -xf man-db-2.7.2.tar.xz && cd man-db-2.7.2

./configure --prefix=/usr                        \
            --docdir=/usr/share/doc/man-db-2.7.2 \
            --sysconfdir=/etc                    \
            --disable-setuid                     \
            --with-browser=/usr/bin/lynx         \
            --with-vgrind=/usr/bin/vgrind        \
            --with-grap=/usr/bin/grap

make && make check && make install 
