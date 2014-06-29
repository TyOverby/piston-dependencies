#!/bin/bash
wget -q http://www.libsdl.org/release/SDL2-2.0.0.tar.gz
tar -zxvf SDL2-2.0.0.tar.gz
cd SDL2-2.0.0
./configure --prefix="$(pwd)/../" && make && make install
cd ../
