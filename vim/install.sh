#!/bin/bash

echo "Creating vim directories"
mkdir -p ~/.vim-tmp

echo "Installing vim"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
