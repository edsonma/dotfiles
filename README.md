# My Personal Dotfiles

My dotfile organization is in this repo. You should clone into your home dir and the path will be ~/dotfiles. There's a script `makesymlinks.sh`that creates symlinks from dotfiles directory.

This script creates your actual dotfiles into ~/dotfiles_old if there's already symlinks to your dotfiles.

There's some simple statements for different operating systems: OS X and Linux. Since PATHS and tools can differ between these to operating systems, having separate sections was necessary. Right now, these dotfiles can be installed and run for either system essentially seamlessly.

# Installation

```
git clone git://github.com/edosnma/dotfiles ~/dotfiles
cd ~/dotfiles
./makesymlinks.sh
```

# Tools that uses my Dotfiles

- Vim + Vundle
- Git
- etc... :)


This dotfiles setup is primary based on [Michael Smalley's dotfiles setup](https://github.com/michaeljsmalley/dotfiles), which he described at his [blog](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/). but I also get contributions from https://github.com/soto97/dotfiles





