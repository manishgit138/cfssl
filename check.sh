#!/bin/bash

if [ $GOARCH = "arm64" ]; then
  export CC=/usr/bin/aarch64-linux-gnu-gcc
else
  export CC=/usr/bin/musl-gcc
fi
