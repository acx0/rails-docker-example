#!/usr/bin/env bash

set -ex

cd /srv/demo
rails server -b 0.0.0.0
