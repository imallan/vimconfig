#!/bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s "$(pwd)/vimrc" ~/.vimrc
ln -s "$(pwd)/vimrc.bundles" ~/.vimrc.bundles
ln -s "$(pwd)/gvimrc" ~/.gvimrc

ln -s "$(pwd)/Snips" ~/.vim/Snips

