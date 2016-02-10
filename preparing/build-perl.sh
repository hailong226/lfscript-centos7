#!/bin/bash

tar -jxf perl-5.22.0.tar.bz2 && cd perl-5.22.0

sh Configure -des -Dprefix=/tools -Dlibs=-lm

make 

cp -v perl cpan/podlators/pod2man /tools/bin
mkdir -pv /tools/lib/perl5/5.22.0
cp -Rv lib/* /tools/lib/perl5/5.22.0
