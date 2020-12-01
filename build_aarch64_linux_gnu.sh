#!/usr/bin/env bash

set -e

export PATH=$HOME/software/Firefly-RK3308_Linux_SDK_git_20181116/buildroot/output/firefly_rk3308_release/host/bin:$PATH

#cp CMakeLists.txt.aarch64-linux-gnu CMakeLists.txt
rm -rf build-aarch64-linux-gnu/*

##### linux for aarch64-linux-gnu toolchain
mkdir -p build-aarch64-linux-gnu
pushd build-aarch64-linux-gnu

cmake -DCMAKE_TOOLCHAIN_FILE=../rk3308/aarch64-gnu.toolchain.cmake \
-DCMAKE_BUILD_TYPE=Release \
-DCMAKE_INSTALL_PREFIX=install \
-DBUILD_SHARED_LIBS=ON \
-DGNU_MACHINE=aarch64-rockchip-linux-gnu ..


make -j32
make install
popd


