#!/bin/bash

tar -xf bison-3.0.4.tar.xz && cd bison-3.0.4

./configure --prefix=/usr --docdir=/usr/share/doc/bison-3.0.4

make && make check && make install
