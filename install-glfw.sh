#!/bin/bash
git clone https://github.com/glfw/glfw.git
cd glfw
git checkout 3.0.3
cmake -DCMAKE_INSTALL_PREFIX:PATH="$(pwd)/../" -DCMAKE_C_FLAGS=-fPIC -DBUILD_SHARED_LIBS=ON -DGLFW_BUILD_EXAMPLES=OFF -DGLFW_BUILD_TESTS=OFF -DGLFW_BUILD_DOCS=OFF . && \
make all install
cd ../
