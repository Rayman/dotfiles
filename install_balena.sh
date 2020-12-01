#!/bin/bash
VERSION=v12.28.3
pushd /tmp
wget -N https://github.com/balena-io/balena-cli/releases/download/$VERSION/balena-cli-$VERSION-linux-x64-standalone.zip
unzip -o balena-cli-$VERSION-linux-x64-standalone.zip
cp -rv balena-cli/* ~/bin
popd

