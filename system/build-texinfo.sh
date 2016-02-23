#!/bin/bash

rm -rf texinfo-6.0 && tar -xf texinfo-6.0.tar.xz && cd texinfo-6.0

./configure --prefix=/usr

make && make check && make install 
make TEXMF=/usr/share/texmf install-tex

pushd /usr/share/info
rm -v dir
for f in *
  do install-info $f dir 2>/dev/null
done
popd
