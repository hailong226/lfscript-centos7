#!/bin/bash

rm -rf file-5.24 && tar -xf file-5.24.tar.gz && cd file-5.24

./configure --prefix=/usr

make && make check && make install 
