#!/usr/bin/env bash

set -ex

export MAKEFLAGS="-j$(nproc)"
gem install bundler
gem install rails
bundle config jobs $(nproc)
