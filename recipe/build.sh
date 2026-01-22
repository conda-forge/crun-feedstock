#! /usr/bin/env bash

./autoreconf -fiv
./configure \
    --prefix="${PREFIX}" \
    --disable-systemd \
    --disable-static \
    --enable-shared

make -j"${CPU_COUNT}"
make install
