#!/bin/bash
echo "Updating VIM RC and Plugins"
cd ~/.vim
# Update Configs
git pull
git submodule foreach git pull origin master
