#!/bin/bash

tar -xf libpipeline-1.4.1.tar.gz && cd libpipeline-1.4.1

PKG_CONFIG_PATH=/tools/lib/pkgconfig ./configure --prefix=/usr

make && make check && make install 
