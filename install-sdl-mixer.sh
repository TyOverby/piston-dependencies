#!/bin/bash
wget -q http://www.libsdl.org/projects/SDL_mixer/release/SDL2_mixer-2.0.0.tar.gz
tar -zxvf SDL2_mixer-2.0.0.tar.gz
cd SDL2_mixer-*
./configure --prefix="$(pwd)/../" && make && make install
