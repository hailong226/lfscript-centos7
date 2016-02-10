#!/bin/bash

tar -xf dejagnu-1.5.3.tar.gz && cd dejagnu-1.5.3

./configure --prefix=/tools && make install && make check
