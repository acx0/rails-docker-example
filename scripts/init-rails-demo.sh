#!/usr/bin/env bash

set -ex

MAKEFLAGS="-j$(nproc)" rails new /srv/demo
