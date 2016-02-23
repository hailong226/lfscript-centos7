#!/bin/bash

rm -rf findutils-4.4.2 && tar -xf findutils-4.4.2.tar.gz && cd findutils-4.4.2

./configure --prefix=/usr --localstatedir=/var/lib/locate

make && make check && make install

mv -v /usr/bin/find /bin
sed -i 's|find:=${BINDIR}|find:=/bin|' /usr/bin/updatedb
