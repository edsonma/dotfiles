## Table of content
- [My Personal Dotfiles](#my-personal-dotfiles)
- [Quickstart](#quickstart)
- [What does it do](#what-does-it-do)
- [References](#references)

## My Personal Dotfiles
My dotfiles are in this repo. You should clone into your home dir and the path will be ~/dotfiles. There's a script `dotfiles_install.sh` that creates symlinks from dotfiles directory and installs some tools for you.

This script creates your actual dotfiles into ~/dotfiles_old if there's already symlinks to your dotfiles.

There's some simple statements for different operating systems: OS X and Linux. Since PATHS and tools can differ between these to operating systems, having separate sections was necessary. Right now, these dotfiles can be installed and run for either system essentially seamlessly.

## Quickstart
If you want to install full tools, you can run:
```bash
git clone git://github.com/edsonma/dotfiles ~/dotfiles
cd ~/dotfiles
./dotfiles_install.sh
```

If you want only create symbolic links (for some reason you already installed everything), to put every dotfiles in proper place, you can run:
```bash
# Put dotfiles in correct place
./link_files.sh
```
## What does it do
- Creates backup of your old dotfiles
- Installs zshell according to you plataform
- Installs Vundle for you vim
- Installs ASDF
- Installs Homebrew or Linuxbrew into your system (Grab a cup of coofee!)

## references
https://dotfiles.github.io/

### Symbolic links do dotfiles
```bash
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
```
### Tools that I use
- Vim + Vundle
- Git
- Zsh
- asdf
- Brew (Repo Bier for good)
- Will add more someday... :)

This dotfiles setup is primary based on [Michael Smalley's dotfiles setup](https://github.com/michaeljsmalley/dotfiles), which he described at his [blog](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/). but I also get contributions from https://github.com/soto97/dotfiles
