#!/bin/bash

tar -xf iproute2-4.2.0.tar.xz && cd iproute2-4.2.0

sed -i '/^TARGETS/s@arpd@@g' misc/Makefile
sed -i /ARPD/d Makefile
sed -i 's/arpd.8//' man/man8/Makefile

make && make DOCDIR=/usr/share/doc/iproute2-4.2.0 install
