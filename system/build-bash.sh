#!/bin/bash

rm -rf bash-4.3.30 && tar -xf bash-4.3.30.tar.gz && cd bash-4.3.30

patch -Np1 -i ../bash-4.3.30-upstream_fixes-2.patch

./configure --prefix=/usr                       \
            --bindir=/bin                       \
            --docdir=/usr/share/doc/bash-4.3.30 \
            --without-bash-malloc               \
            --with-installed-readline

make
chown -Rv nobody .
su nobody -s /bin/bash -c "PATH=$PATH make tests"
make install
exec /bin/bash --login +h
