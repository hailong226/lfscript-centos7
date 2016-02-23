#!/bin/bash

rm -rf patch-2.7.5 && tar -xf patch-2.7.5.tar.xz && cd patch-2.7.5

./configure --prefix=/usr

make && make check && make install 
