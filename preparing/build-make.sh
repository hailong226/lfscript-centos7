#!/bin/bash

tar -jxf make-4.1.tar.bz2 && cd make-4.1

./configure --prefix=/tools --without-guile

make && make check && make install
