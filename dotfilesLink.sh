#!/bin/sh
unlink ~/.vimrc
unlink ~/.vim
ln -sf ~/dotfiles.vim/.vimrc ~/.vimrc
ln -sf ~/dotfiles.vim/vimfiles ~/.vim

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

git clone https://github.com/VundleVim/Vundle.vim.git ~/dotfiles.vim/vimfiles/bundle/Vundle.vim


vim +PluginInstall +qall

