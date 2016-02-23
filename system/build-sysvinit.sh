#!/bin/bash

tar -jxf sysvinit-2.88dsf.tar.bz2 && cd sysvinit-2.88dsf

make -C src && make -C src install
