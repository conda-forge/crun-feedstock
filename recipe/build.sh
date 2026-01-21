#! /usr/bin/env bash

autoreconf -fis

if [[ ${build_platform} != ${target_platform} ]]; then
    ./configure \
        --prefix="${PREFIX}" \
        --disable-systemd \
        --disable-shared \
        --enable-static \
        --disable-dynload-libcrun
else
    ./configure \
        --prefix="${PREFIX}" \
        --disable-systemd \
        --disable-static \
        --enable-shared \
        --disable-dynload-libcrun
fi

make -j"${CPU_COUNT}"
make install
