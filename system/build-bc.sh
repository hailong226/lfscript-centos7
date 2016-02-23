#!/bin/bash

tar -jxf bc-1.06.95.tar.bz2 && cd bc-1.06.95

patch -Np1 -i ../bc-1.06.95-memory_leak-1.patch

./configure --prefix=/usr           \
            --with-readline         \
            --mandir=/usr/share/man \
            --infodir=/usr/share/info

make

echo "quit" | ./bc/bc -l Test/checklib.b

make install
