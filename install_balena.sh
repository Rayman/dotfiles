#!/bin/bash
pushd /tmp
wget -N https://github.com/balena-io/balena-cli/releases/download/v11.30.0/balena-cli-v11.30.0-linux-x64-standalone.zip
unzip -o balena-cli-v11.30.0-linux-x64-standalone.zip
cp -rv balena-cli/* ~/bin
popd

