# ceedee's dotfiles

## About this repository

This repository contains configuration and customisation settings for Christians workspace, following the [dotfiles](https://dotfiles.github.io/) philosophy and practice. Most of the content here is based on DJ Adams's [dotfile repository](https://github.com/SAP-samples/devenv-dotfiles-qmacro). Futhermore, I used the approch described [here](https://www.atlassian.com/git/tutorials/dotfiles) to put my dotfiles in a git repository. 

## Requirements

The dotfiles here have been developed on macOS, which is what you'll need to use them. They will most likely work on Linux too.

## Download and installation

To install, clone this repository. I suggest cloning it to your home directory, which is where I keep mine. Be careful not to clobber anything you already have there.

```bash
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
echo ".cfg" >> .gitignore
git clone --bare <git-repo-url> $HOME/.cfg
config checkout
```

## How to obtain support

This content is provided "as-is" with no other support.
