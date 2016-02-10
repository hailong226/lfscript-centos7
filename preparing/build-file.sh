#!/bin/bash

tar -xf file-5.24.tar.gz && cd file-5.24

./configure --prefix=/tools && make && make check && make install
