#!/bin/sh
unlink ~/.vimrc
unlink ~/.vim
unlink ~/.zshrc

ln -sf ~/dotfiles.vim/.vimrc ~/.vimrc
ln -sf ~/dotfiles.vim/vimfiles ~/.vim
ln -sf ~/dotfiles.vim/.zshrc ~/.zshrc

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

git clone https://github.com/VundleVim/Vundle.vim.git ~/dotfiles.vim/vimfiles/bundle/Vundle.vim


vim +PluginInstall +qall

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"

