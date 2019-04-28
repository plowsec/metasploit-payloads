#!/bin/bash


rm -f output/Release/*
cd workspace/ReflectiveDLLInjection/CMakeBuild
make clean
cmake ..
make -j 4
cd ../../common/CMakeBuild/
make clean
cmake ..
make -j 4
cd ../../metsrv/CMakeBuild
make clean
cmake ..
make -j 4
cd ../../ext_server_stdapi/CMakeBuild
make clean
cmake ..
make -j 4



