#!/bin/bash

tar -xf gawk-4.1.3.tar.xz && cd gawk-4.1.3

./configure --prefix=/tools

make && make check && make install
