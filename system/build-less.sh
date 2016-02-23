#!/bin/bash

tar -xf less-458.tar.gz && cd less-458

./configure --prefix=/usr --sysconfdir=/etc

make && make install
