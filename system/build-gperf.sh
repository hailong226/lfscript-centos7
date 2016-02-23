#!/bin/bash

tar -xf gperf-3.0.4.tar.gz && cd gperf-3.0.4

./configure --prefix=/usr --docdir=/usr/share/doc/gperf-3.0.4

make && make -j1 check && make install
