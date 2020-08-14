#!/usr/bin/env bash

set -e

name="$(basename "$PWD")"
docker build . \
    -f run-image-dockerfile \
    -t "run-$name"
