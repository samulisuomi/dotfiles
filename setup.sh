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
GHOSTTY_DIR="$HOME/Library/Application Support/com.mitchellh.ghostty"
mkdir -p "$GHOSTTY_DIR"
ln -sf "$BASEDIR/ghostty/config" "$GHOSTTY_DIR/config"
ln -sf $BASEDIR/vim/.vimrc $HOME/.vimrc
ln -sf $BASEDIR/zsh/.zshrc $HOME/.zshrc
