#!/bin/sh
hash curl 2> /dev/null | sudo apt install curl
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
