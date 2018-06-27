## Table of content

- [Quickstart](#quickstart)
- [What does it do](#what-does-it-do)
- [References] (#references)

## Quickstart

On Mac OSX, if you want to easy full environment to your machine, you can run: 

```bash
# Install Full Tools and dotfiles 
./mac_install.sh
```

If you want only create symbolic links, to put every dotfiles in proper place, you can run:
```bash
# Put dotfiles in correct place
./link_files.sh
```

## What does it do
- Installs Homebrew 
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew tap caskroom/cask
brew tap caskroom/versions
```

- Installs RVM 
```bash
brew install gnupg
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function' >> ~/.zshrc
source ~/.zshrc
\curl -sSL https://get.rvm.io | bash -s stable --ruby
```

- Installs GIT
```bash
brew install git
```


26
27 
28 cd ~/dotfiles/vim/bundle && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
29 vim -c VundleUpdate -c quitall

- Installs VIM
```bash
brew install vim
```

```bash
# Install Vundle and update plugins (vim plugin)
cd ~/dotfiles/vim/bundle && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c VundleUpdate -c quitall
```

- Installs ASDF
```bash
brew install asdf
```

- Installs Oh-My-ZSH
```bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

```bash
- Symbolic Links to dotfiles
ln -s ~/dotfiles/vim/vimrc ~/.vimrc
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/system/alias ~/.alias
ln -s ~/dotfiles/system/zshrc ~/.zshrc
ln -s ~/dotfiles/system/oh-my-zsh ~/.oh-my-zsh
ln -s ~/git/gitconfig ~/.gitconfig
```

## references
https://dotfiles.github.io/

