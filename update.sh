#!/bin/bash
echo "Updating VIM RC and Plugins"
cd ~/.vim
# Update Configs
git pull
git submodule init
git submodule foreach git pull origin master
