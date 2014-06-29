#!/bin/bash
wget -q http://www.portaudio.com/archives/pa_stable_v19_20140130.tgz
tar -zxvf pa_stable_v19_*.tgz
cd portaudio
./configure --prefix="$(pwd)/../" && make && make install
cd ../
