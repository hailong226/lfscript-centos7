#!/bin/bash

tar -xf coreutils-8.24.tar.xz && cd coreutils-8.24

if [ 'root' == `whoami` ]; then
    export FORCE_UNSAFE_CONFIGURE=1
fi

./configure --prefix=/tools --enable-install-program=hostname

make && make RUN_EXPENSIVE_TESTS=yes check && make install
