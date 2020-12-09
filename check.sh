#!/bin/bash
set -e
rm -rf completions
mkdir completions
if [ $GOOS = "linux" ]; then
  for arch in amd64 arm64; do
    if [ $GOARCH = "arm64" ]; then
      export CC=/usr/bin/aarch64-linux-gnu-gcc >"completions/goreleaser.$arch"
    else
      export CC=/usr/bin/musl-gcc >"completions/goreleaser.$arch"
    fi
  done
fi
