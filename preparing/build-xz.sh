#!/bin/bash

tar -xf xz-5.2.1.tar.xz && cd xz-5.2.1

./configure --prefix=/tools

make && make check && make install
