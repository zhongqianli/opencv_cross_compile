#!/usr/bin/env bash

set -e

rm -rf build-host-gcc-linux/*

##### linux host system with gcc/g++
mkdir -p build-host-gcc-linux
pushd build-host-gcc-linux

cmake -DCMAKE_BUILD_TYPE=Release \
-D CMAKE_INSTALL_PREFIX=install \
-D OPENCV_GENERATE_PKGCONFIG=YES \
-DBUILD_SHARED_LIBS=ON ..

make -j32
make install
popd

