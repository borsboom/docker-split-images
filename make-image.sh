#!/usr/bin/env bash
set -xe
docker build -t build_haskell-hello build/
docker run --rm \
    --volume="$PWD/build/src:/src" \
    --volume="$PWD/run/artifacts:/artifacts" \
    build_haskell-hello
docker build -t haskell-hello run/
