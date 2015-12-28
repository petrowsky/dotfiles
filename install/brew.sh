#!/bin/sh
# Compliments of https://github.com/mathiasbynens/dotfiles/blob/master/brew.sh

# Install command-line tools using Homebrew.
if test ! $(which brew); then
  echo "Installing homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Updating homebrew"
  brew update
fi

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Upgrade any already-installed formulae.
brew upgrade --all

# Setup brew taps
brew tap homebrew/dupes
brew tap homebrew/nginx
brew tap homebrew/php
brew tap homebrew/versions

# Essentials
brew install ag
brew install ack
brew install tree
brew install pstree
brew install pandoc
brew install par
brew install rename
brew install vim --with-lua --override-system-vi
brew install python3
brew install s3cmd
brew install duplicity
brew install gnupg
brew install lynx
brew install zsh

brew install homebrew/dupes/grep
brew install homebrew/dupes/gzip
brew install homebrew/dupes/screen
brew install homebrew/dupes/zlib

# Network tools
brew intall curl
brew install wget

# Development tools
brew install ctags
brew install git
brew install highlight
brew install hub
brew install markdown
brew install the_silver_searcher
brew install tidy-html5
brew install tmux
brew install z

# PHP Stuff
brew install homebrew/php/composer
brew install homebrew/php/drupal-code-sniffer

# Javascript
brew install node

# Image tools
brew install exif
brew install graphicsmagick
brew install pngquant

# OS X tools
brew install tag
brew install webkit2png

# Neovim
brew install neovim/neovim/neovim

# Remove outdated versions from the cellar.
brew cleanup

exit 0
