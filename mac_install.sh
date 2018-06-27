#!/bin/bash

# Author: Edson Ma
# Install Tools and dotfiles for Mac OSX

# References
https://dotfiles.github.io/

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew tap caskroom/cask
brew tap caskroom/versions

# Install RVM
brew install gnupg
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function' >> ~/.zshrc
source ~/.zshrc
\curl -sSL https://get.rvm.io | bash -s stable --ruby

# Install git
brew install git

# Install vim
brew install vim

# Install Vundle and update plugins (vim plugin)
cd ~/dotfiles/vim/bundle && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c VundleUpdate -c quitall

# Install asdf
brew install asdf

# Adicional Tools
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Symbolic links
ln -s ~/dotfiles/vim/vimrc ~/.vimrc
ln -s ~/dotfiles/vim/vimdata ~/.vim
ln -s ~/dotfiles/system/alias ~/.alias
ln -s ~/dotfiles/system/zshrc ~/.zshrc
ln -s ~/dotfiles/system/oh-my-zsh ~/.oh-my-zsh
ln -s ~/git/gitconfig ~/.gitconfig



