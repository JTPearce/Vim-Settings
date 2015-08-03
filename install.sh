#!/bin/bash
echo "Installing Vim Settings"
ln -s ~/.vim/.vimrc ~/.vimrc
cd ~/.vim
git submodule update --init
