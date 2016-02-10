#!/bin/bash

mkdir -pv $LFS/sources && chmod -v a+wt $LFS/sources

# cd $LFS/sources && wget http://www.linuxfromscratch.org/lfs/view/stable/wget-list && \
#     wget --input-file=wget-list --continue --directory-prefix=$LFS/sources && \
#     wget http://www.linuxfromscratch.org/lfs/view/stable/md5sums

cp -r /root/sources/* $LFS/sources/

pushd $LFS/sources
md5sum -c md5sums
popd
