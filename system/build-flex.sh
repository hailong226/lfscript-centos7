#!/bin/bash

tar -xf flex-2.5.39.tar.xz && cd flex-2.5.39

sed -i -e '/test-bison/d' tests/Makefile.in

./configure --prefix=/usr --docdir=/usr/share/doc/flex-2.5.39

make && make check && make install

ln -sv flex /usr/bin/lex
