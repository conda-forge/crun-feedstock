#! /usr/bin/env bash

export CPPFLAGS="${CPPFLAGS} -DSOL_NETLINK=270"
export _LIBCONTAINER_CLONED_BINARY=1

autoreconf -fiv
./configure \
    --prefix="${PREFIX}" \
    --disable-systemd \
    --disable-static \
    --enable-shared

make -j"${CPU_COUNT}"
make install
