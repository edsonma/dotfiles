#!/bin/bash

# Author: Edson Ma
# This script installs tools and creates symlinks from all dotfiles in ~/dotfiles

# Variables
dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="gitconfig alias zshrc oh-my-zsh vim vimrc asdf linuxbrew"    # list of files/folders to symlink in homedir
datedir=`date +%Y-%m-%d`
platform=$(uname);                # get your OS platform

# create dotfiles_old in homedir
echo -n "Creating $olddir/$datedir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir/$datedir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory
echo "Moving any existing dotfiles from ~ to $olddir/$datedir ..."
for file in $files; do
    mv ~/.$file ~/dotfiles_old/$datedir
done

# Create symlinks from the homedir to any files in the ~/dotfiles directory
create_symbolic_links() {
  ln -s ~/dotfiles/vim/vimrc ~/.vimrc
  ln -s ~/dotfiles/vim ~/.vim
  ln -s ~/dotfiles/system/alias ~/.alias
  ln -s ~/dotfiles/system/asdfrc ~/.asdfrc
  ln -s ~/dotfiles/system/zshrc ~/.zshrc
  ln -s ~/dotfiles/system/oh-my-zsh ~/.oh-my-zsh
  ln -s ~/dotfiles/tools/asdf ~/.asdf
  ln -s ~/dotfiles/git/gitconfig ~/.gitconfig
  if [[ $platform == 'Linux' ]]; then
    ln -s ~/dotfiles/system/linuxbrew ~/.linuxbrew
  fi
}

install_zsh() {
# Test to see if zshell is installed.
if [ -f /bin/zsh -o -f /usr/bin/zsh ]; then
    # Clone my oh-my-zsh repository from GitHub only if it isn't already present
    echo "Oh my zsh already available. Good Job!"
    if [[ ! -d $dir/system/oh-my-zsh/ ]]; then
        git clone http://github.com/robbyrussell/oh-my-zsh.git
    fi
    # Set the default shell to zsh if it isn't currently set to zsh
    if [[ ! $(echo $SHELL) == $(which zsh) ]]; then
        chsh -s /bin/zsh
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
  if [ -d ~/.vim/bundle/Vundle.vim ]; then
    echo "Vundle already installed. Please enter vim and type :PluginInstall"
  else
    git clone https://github.com/VundleVim/Vundle.vim.git $dir/vim/bundle/Vundle.vim
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

    git clone https://github.com/asdf-vm/asdf.git $dir/tools/asdf --branch v0.5.0
  fi
}

install_brew() {
    # if the platform is Linux
    if [[ $platform == 'Linux' ]]; then
      if [ -f ~/.linuxbrew ]; then
        echo "Linuxbrew already available. Good Bier!"
      else
        git clone https://github.com/Linuxbrew/brew.git $dir/system/linuxbrew
        echo 'PATH="$HOME/.linuxbrew/bin:$PATH"' >> ~/.zshrc
        echo 'export MANPATH="$(brew --prefix)/share/man:$MANPATH"' >> ~/.zshrc
        echo 'export INFOPATH="$(brew --prefix)/share/info:$INFOPATH"' >> ~/.zshrc
      fi
    # If the platform is OS X
    elif [[ $platform == 'Darwin' ]]; then
      if [ -f /usr/local/Homebrew/bin/brew ]; then
        echo "Homebrew already available. Good Bier!"
      else
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        brew update
        brew tap caskroom/cask
        brew tap caskroom/versions
        exit
      fi
    fi
}

install_zsh
install_vundle
install_asdf
install_brew

create_symbolic_links
