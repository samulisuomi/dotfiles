#!/bin/bash

# Upgrade homebrew and any already-installed formulae:
brew update
brew upgrade

# Install the packages we need:
brew install bash-completion git pure rbenv ruby-build tree

# Remove outdated versions from the cellar:
brew cleanup

# Set up all the necessary symlinks:

# Absolute path to this script, e.g. /Users/foo/projects/dotfiles
BASEDIR=$(dirname $(readlink -f $0))

# Create the symlinks:
ln -sf $BASEDIR/bash/.bash_profile $HOME/.bash_profile
ln -sf $BASEDIR/git/.gitconfig $HOME/.gitconfig
ln -sf $BASEDIR/vim/.vimrc $HOME/.vimrc
ln -sf $BASEDIR/zsh/.zshrc $HOME/.zshrc
