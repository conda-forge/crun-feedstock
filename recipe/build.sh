#! /usr/bin/env bash

./autogen.sh
./configure \
    --prefix="${PREFIX}" \
    --disable-systemd \
    --disable-static \
    --enable-shared

make -j"${CPU_COUNT}"
make install
