#!/bin/bash

tar -xf texinfo-6.0.tar.xz && cd texinfo-6.0

./configure --prefix=/tools

make && make check && make install
