#!/bin/sh
ln -sf ~/dotfiles/_vimrc ~/.vimrc
ln -sf ~/dotfiles/vimfiles ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/dotfiles/vimfiles/bundle/Vundle.vim
