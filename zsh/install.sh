#!/bin/bash

brewzsh="/usr/local/bin/zsh"

if [[ -e ${brewzsh} ]]; then
  echo "Switching shell to homebrew zsh"
  echo "Please enter your password so we can add it to /etc/shells..."

  # no longer working because of Apple's 'rootless' ("System Integrity Protection")

  # unalias run-help
  # autoload run-help
  # HELPDIR=/usr/local/share/zsh/help
else
  echo "Homebrew zsh is not installed"
fi

