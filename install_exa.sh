#!/bin/bash
set -euxo
pushd /tmp
wget -N https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-v0.10.1.zip
unzip -o exa-linux-x86_64-v0.10.1.zip
install -v bin/exa ~/bin/exa
popd
echo OK
