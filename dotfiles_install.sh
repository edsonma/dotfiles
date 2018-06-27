#!/bin/bash

# Author: Edson Ma
# This script installs tools and creates symlinks from all dotfiles in ~/dotfiles

#References
https://dotfiles.github.io/

# Variables
dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="git/gitconfig system/alias system/zshrc system/oh-my-zsh vim vim/vimrc"    # list of files/folders to symlink in homedir
platform=$(uname);                # get your OS platform

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir
# to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

install_zsh () {
# Test to see if zshell is installed.
if [ -f /bin/zsh -o -f /usr/bin/zsh ]; then
    # Clone my oh-my-zsh repository from GitHub only if it isn't already present
    if [[ ! -d $dir/oh-my-zsh/ ]]; then
        git clone http://github.com/robbyrussell/oh-my-zsh.git
    fi
    # Set the default shell to zsh if it isn't currently set to zsh
    if [[ ! $(echo $SHELL) == $(which zsh) ]]; then
        chsh -s $(which zsh)
    fi
else
    # If zsh isn't installed, get the platform of the current machine
    # If the platform is Linux, try an apt-get to install zsh and then recurse
    if [[ $platform == 'Linux' ]]; then
        if [[ -f /etc/redhat-release ]]; then
            sudo yum install zsh
            install_zsh
        fi
        if [[ -f /etc/debian_version ]]; then
            sudo apt-get install zsh
            install_zsh
        fi
    # If the platform is OS X, tell the user to install zsh :)
    elif [[ $platform == 'Darwin' ]]; then
        echo "Trying to install zsh throught homebrew!"
        install_brew
        brew install zsh zsh-completions
        exit
    fi
fi
}

install_vundle () {
if [ -f ~/.vim/bundle/Vundle.vim ]; then
  echo "Vundle already installed. Please enter vim and type :PluginInstall"
else
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
}

install_asdf() {
  if [ -f ~/.asdf/asdf.sh ]; then
    echo "asdf already available. Good job!"
  else
    if [[ $platform == 'Linux' ]]; then
        if [[ -f /etc/redhat-release ]]; then
          sudo yum install automake autoconf readline-devel ncurses-devel openssl-devel libyaml-devel libxslt-devel libffi-devel libtool unixODBC-devel
        fi
        if [[ -f /etc/debian_version ]]; then
      sudo apt-get install automake autoconf libreadline-dev libncurses-dev libssl-dev libyaml-dev libxslt-dev libffi-dev libtool unixodbc-dev
        fi
    elif [[ $platform == 'Darwin' ]]; then
      brew install coreutils automake autoconf openssl libyaml readline libxslt libtool unixodbc
    fi

    git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.4.1
  fi
}

install_brew() {
    #If the platform is Linux
    if [[ $platform == 'Linux' ]]; then
      git clone https://github.com/Linuxbrew/brew.git ~/.linuxbrew
      echo 'PATH="$HOME/.linuxbrew/bin:$PATH"' >> ~/.zshrc
      echo 'export MANPATH="$(brew --prefix)/share/man:$MANPATH"' >> ~/.zshrc
      echo 'export INFOPATH="$(brew --prefix)/share/info:$INFOPATH"' >> ~/.zshrc

    # If the platform is OS X
    elif [[ $platform == 'Darwin' ]]; then
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        brew update
        brew tap caskroom/cask
        brew tap caskroom/versions
        exit
    fi
}

install_zsh
install_vundle
install_asdf
install_brew

