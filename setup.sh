#!/bin/bash

# Upgrade homebrew and any already-installed formulae:
brew update
brew upgrade --all

# Install the packages we need:
brew install bash-completion git pure rbenv ruby-build tree

# Install more recent versions of some macOS tools:
brew install vim homebrew/dupes/grep homebrew/dupes/openssh

# Remove outdated versions from the cellar:
brew cleanup

# Set up all the necessary symlinks:

# Absolute path to this script, e.g. /Users/foo/projects/dotfiles
BASEDIR=$(dirname $(readlink -f $0))

# Create the symlinks:
ln -sf $BASEDIR/bash/.bash_profile $HOME/.bash_profile
ln -sf $BASEDIR/git/.gitconfig $HOME/.gitconfig
ln -sf $BASEDIR/zsh/.zshrc $HOME/.zshrc

