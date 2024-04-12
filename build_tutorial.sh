#!/bin/sh
BUILD_DIR=./build

rm -rf $BUILD_DIR
mkdir $BUILD_DIR
cd $BUILD_DIR

cmake -GNinja .. \
    -DLLVM_DIR=/home/jinming/project/Aries/externals/llvm-project/build/lib/cmake/llvm \
    -DMLIR_DIR=/home/jinming/project/Aries/externals/llvm-project/build/lib/cmake/mlir \
    -DBUILD_SHARED_LIBS="OFF" \
    -DCMAKE_BUILD_TYPE=Debug

cmake --build . --target tutorial-opt

cd /home/jinming/project/mlir-tutorial