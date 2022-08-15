#!/bin/sh

BUILD_TYPE=$1
BUILD=$2
CURRENT_PWD=$PWD

# Update conan default profile
conan profile update settings.compiler.libcxx=libstdc++11 default

## Clean workspace
rm -rf $CURRENT_PWD/build/$BUILD_TYPE

mkdir -p $CURRENT_PWD/build/$BUILD_TYPE

## conan install

cd $CURRENT_PWD/build/$BUILD_TYPE

conan install ../.. --build=missing

# Build if requiered

if [ "$BUILD" = "Y" ]; then
    cmake -DCMAKE_BUILD_TYPE=$BUILD_TYPE ../..
    cmake --build .
fi

cd $CURRENT_PWD
