#!/bin/bash
mkdir -vp ~/bin
mkdir -vp ~/.config/git
find * -maxdepth 0 -type d -print0 | xargs -0 stow
