#!/bin/bash

# GLFW
if [ $GLFW ] && [ ! -f "./lib/libglfw.so" ]; then
    echo "installing GLFW"
    ./install-glfw.sh
fi

# PORTAUDIO
if [ $PORTAUDIO ] && [ ! -f "./lib/libportaudio.so" ]; then
    echo "installing portaudio"
    ./install-portaudio.sh
fi

# SDL2
if [ $SDL2 ] && [ ! -f "./lib/libSDL2-2.0.so.0" ]; then
    echo "installing SDL2"
    ./install-sdl2.sh
fi

# SDL2-TTF
if [ $SDL2_TTF ] && [ ! -f "./lib/libSDL2_ttf.so" ]; then
    echo "installing sdl2-ttf"
    ./install-sdl2-ttf.sh
fi

# SDL-MIXER
if [ $SDL_MIXER ] && [ ! -f "./lib/libSDL2_mixer.so" ]; then
    echo "installing sdl-mixer"
    ./install-sdl-mixer.sh
fi

# $OUT_DIR is provided to us by cargo
if [ -d ./lib/ ]; then
    cp -r lib/* $OUT_DIR
fi
