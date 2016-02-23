#!/bin/bash

rm -rf diffutils-3.3 && tar -xf diffutils-3.3.tar.xz && cd diffutils-3.3

sed -i 's:= @mkdir_p@:= /bin/mkdir -p:' po/Makefile.in.in

./configure --prefix=/usr

make && make install 
