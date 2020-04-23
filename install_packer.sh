#!/bin/bash

pushd /tmp
wget -N -O packer.zip https://releases.hashicorp.com/packer/1.5.5/packer_1.5.5_linux_amd64.zip

unzip -o packer.zip
install -v packer ~/bin/packer
popd
echo OK
