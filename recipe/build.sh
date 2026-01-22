#! /usr/bin/env bash

export CPPFLAGS="${CPPFLAGS} -DSOL_NETLINK=270"

autoreconf -fiv
./configure \
    --prefix="${PREFIX}" \
    --disable-systemd \
    --disable-static \
    --enable-shared \
    --disable-dynload-libcrun

make -j"${CPU_COUNT}"
make install
