```
* Guppy Lovers: Fish Shell ___          
  ___======____=---=)
/T            \_--===)
[ \ (O)   \~    \_-==)
 \      / )J~~    \-=)
  \\___/  )JJ~~~   \)
   \_____/JJJ~~~~    \
   / \  , \J~~~~~     \
  (-\)\=|\\\~~~~       L__
  (\\)  (\\\)_           \==__
   \V    \\\) ===_____   \\\\\\
          \V)     \_) \\\\JJ\J\)
                      /J\JT\JJJJ)
                      (JJJ| \UUU)
                       (UU)
```                    

## Table of content
- [My Personal Dotfiles](#my-personal-dotfiles)
- [Quickstart](#quickstart)
- [What does it do](#what-does-it-do)
- [References](#references)

## My Personal Dotfiles
My dotfiles are in this repo. You should clone into your home dir and the path will be ~/dotfiles. There's a script `dotfiles_install.sh` that creates symlinks from dotfiles directory and installs some tools for you.

This script creates your actual dotfiles into ~/dotfiles_old if there's already symlinks to your dotfiles.

There's some simple statements for different operating systems: OS X and Linux. Since PATHS and tools can differ between these to operating systems, having separate sections was necessary. Right now, these dotfiles can be installed and run for either system essentially seamlessly.

update: my old env was using zshell + oh-my-zsh framework + iterm2 and now I am moving to fish_shell + starship + alacritty. Old install files will be stored at setup folder and renamed to dotfiles_zsh_install.sh and link_zsh_files.sh


## Quickstart
If you want to install full tools, you can run:
```bash
git clone git://github.com/edsonma/dotfiles ~/dotfiles
cd ~/dotfiles
./dotfiles_install.sh (wip)
```

If you want only create symbolic links (for some reason you already installed everything), to put every dotfiles in proper place, you can run:
```bash
# Put dotfiles in correct place
./link_files.sh
```
## What does it do
- Creates backup of your old dotfiles
- Installs fish shell according to your platform
- Installs starship according to your platform
- Installs Vundle for you vim (maybe migrating to neovim)
- Installs Homebrew or Linuxbrew into your system (Grab a cup of coofee!)

## references
https://dotfiles.github.io/

### Symbolic links do dotfiles
```bash
ln -s ~/dotfiles/vim/vimrc ~/.vimrc
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/system/alias ~/.alias (deprecated)
ln -s ~/dotfiles/system/zshrc ~/.zshrc (deprecated)
ln -s ~/dotfiles/system/oh-my-zsh ~/.oh-my-zsh (deprecated)
ln -s ~/dotfiles/git/gitconfig ~/.gitconfig

if [[ $platform == 'Linux' ]]; then
  ln -s ~/dotfiles/system/linuxbrew ~/.linuxbrew
fi 
```
### Tools that I use
- Vim + Vundle
- Git
- Fish
- Starship
- Brew (Repo Bier for good)
- Alacritty


After Words

This dotfiles setup as primary based on [Michael Smalley's dotfiles setup](https://github.com/michaeljsmalley/dotfiles), which he described at his [blog](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/). but I also get contributions from https://github.com/soto97/dotfiles

Now I am migrating to new Fishy shell envs and diving in new waters. It is a living experiment and hope find clean waters in this new jorney. Cheers! gulp gulp .. o o  oOo O ...



