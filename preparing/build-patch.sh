#!/bin/bash

tar -xf patch-2.7.5.tar.xz && cd patch-2.7.5

./configure --prefix=/tools

make && make checkout && make install
