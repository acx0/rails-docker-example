#!/usr/bin/env bash

set -ex

# note: installer adds yarn PATH config to ~/.bashrc
curl -Lo- https://yarnpkg.com/install.sh | bash
