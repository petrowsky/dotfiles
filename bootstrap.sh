#!/bin/bash
# Borrowed from https://github.com/nicknisi/dotfiles/blob/master/install.sh
# and https://github.com/holman/dotfiles/blob/master/script/install

echo "Installing dotfiles"

echo "Initializing submodule(s)"
git submodule update --init --recursive

source install/symlinks.sh

if [ "$(uname)" == "Darwin" ]; then
    echo "Running on OSX"

    echo "Brewing all the things"
    source install/brew.sh

    echo "Updating OSX settings"
    source install/installosx.sh
fi

echo "Running installers"
# Find installers and run them iteratively
find . -name install.sh | while read installer ; do sh -c "${installer}" ; done

echo "Setting zsh as default shell"
chsh -s $(which zsh)

echo "Enjoy computing!"
