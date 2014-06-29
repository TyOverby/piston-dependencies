#!/bin/bash
wget -q http://www.libsdl.org/projects/SDL_ttf/release/SDL2_ttf-2.0.12.tar.gz
tar -zxvf SDL2_ttf-2.0.12.tar.gz
cd SDL2_ttf-*
./configure --prefix="$(pwd)/../" && make && make install
