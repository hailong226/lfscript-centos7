#!/bin/bash

tar -jxf iana-etc-2.30.tar.bz2 && cd iana-etc-2.30

make && make install
