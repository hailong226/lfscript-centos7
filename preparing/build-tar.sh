#!/bin/bash

tar -xf tar-1.28.tar.xz && cd tar-1.28

if [ 'root' == `whoami` ]; then
    export FORCE_UNSAFE_CONFIGURE=1
fi

./configure --prefix=/tools

make && make check && make install
