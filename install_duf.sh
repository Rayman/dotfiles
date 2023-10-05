#!/bin/bash
pushd /tmp
wget -N https://github.com/muesli/duf/releases/download/v0.8.1/duf_0.8.1_linux_amd64.deb
sudo dpkg -i duf_0.8.1_linux_amd64.deb
popd
echo OK
