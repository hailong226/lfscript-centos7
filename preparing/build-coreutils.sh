#!/bin/bash

tar -xf coreutils-8.24.tar.xz && cd coreutils-8.24

./configure --prefix=/tools --enable-install-program=hostname

make && make RUN_EXPENSIVE_TESTS=yes check && make install
