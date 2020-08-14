#!/usr/bin/env bash

set -e

name="$(basename "$PWD")"
docker run -it \
    -p 3000:3000 \
    "run-$name"
