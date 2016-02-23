#!/bin/bash

tar -xf autoconf-2.69.tar.xz && cd autoconf-2.69

./configure --prefix=/usr

make && make install
