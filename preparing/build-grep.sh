#!/bin/bash

tar -xf grep-2.21.tar.xz && cd grep-2.21

./configure --prefix=/tools

make && make check && make install
