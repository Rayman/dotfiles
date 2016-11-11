#!/bin/bash

wget -q -O - http://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
sudo sh -c 'echo "deb http://apt.llvm.org/jessie/ llvm-toolchain-jessie-3.9 main" >> /etc/apt/sources.list.d/llvm.list'
sudo apt update
sudo apt install clang-3.9 clang-format-3.9 clang-tidy-3.9 

