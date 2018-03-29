#!/usr/bin/env bash

set -eux

# Clone submodule if not there
[ ! -z "$(ls -A ./debian-rootfs)" ] || \
    git submodule update --init

# Setup rootfs
./debian-rootfs/create-all.sh
