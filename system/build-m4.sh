#!/bin/bash

rm -rf m4-1.4.17 && tar -xf m4-1.4.17.tar.xz && cd m4-1.4.17

./configure --prefix=/usr

make && make install
