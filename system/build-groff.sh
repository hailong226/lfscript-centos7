#!/bin/bash

tar -xf groff-1.22.3.tar.gz && cd groff-1.22.3

PAGE=A4 ./configure --prefix=/usr

make && make install
