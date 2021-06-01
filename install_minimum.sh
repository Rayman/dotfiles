#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

xargs --arg-file="$DIR/apt-minimum.keepers" sudo apt install

