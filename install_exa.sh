#!/bin/bash

pushd /tmp
wget -N https://github.com/ogham/exa/releases/download/v0.9.0/exa-linux-x86_64-0.9.0.zip
unzip -o exa-linux-x86_64-0.9.0.zip
install -v exa-linux-x86_64 ~/bin/exa
popd
echo OK