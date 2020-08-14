#!/usr/bin/env bash

set -ex

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

echo 'gem: --no-document' > ~/.gemrc

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
PATH="$HOME/.rbenv/bin:$PATH"

echo 'eval "$(rbenv init -)"' >> ~/.bashrc
eval "$(rbenv init -)"

# note: rbenv parallelizes compilation
ruby_version="2.7.1"
RUBY_CONFIGURE_OPTS="--disable-install-doc" rbenv install --verbose "$ruby_version"
rbenv global "$ruby_version"
