#! /bin/sh

cd ~

sudo -v

# Install homesick
sudo gem install homesick

# Download dotfiles repo
homesick clone git://github.com/mpaladin/dotfiles.git

# Move dotfiles into ~
homesick symlink dotfiles

# Run .osx file to configure Mac OSX
#chmod 755 .osx
#./.osx

# Install homebrew
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"
brew doctor

# Use homebrew to install unix tools
chmod 755 .brew
brew bundle .brew

