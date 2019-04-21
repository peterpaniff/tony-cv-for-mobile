mkdir -p build-host-gcc-linux
cd build-host-gcc-linux
cmake -DCMAKE_TOOLCHAIN_FILE=../toolchains/host.gcc.toolchain.cmake ..
make -j
make install


