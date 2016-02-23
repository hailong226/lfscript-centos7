#!/bin/bash

rm -rf grep-2.21 && tar -xf grep-2.21.tar.xz && cd grep-2.21

sed -i -e '/tp++/a  if (ep <= tp) break;' src/kwset.c

./configure --prefix=/usr --bindir=/bin

make && make install
