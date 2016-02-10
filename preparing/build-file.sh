#!/bin/bash

tar -xf file-5.24.tar.gz && file-5.24

./configure --prefix=/tools && make && make check && make install
