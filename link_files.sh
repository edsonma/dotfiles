#!/bin/bash

# Author: Edson Ma
# Put everything in the right place

# Symbolic links
ln -s ~/dotfiles/vim/vimrc ~/.vimrc
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/system/alias ~/.alias
ln -s ~/dotfiles/system/zshrc ~/.zshrc
ln -s ~/dotfiles/system/oh-my-zsh ~/.oh-my-zsh
ln -s ~/dotfiles/tools/asdf ~/.asdf
ln -s ~/dotfiles/git/gitconfig ~/.gitconfig

if [[ $platform == 'Linux' ]]; then
  ln -s ~/dotfiles/system/linuxbrew ~/.linuxbrew
fi

