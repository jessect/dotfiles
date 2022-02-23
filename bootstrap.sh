#!/bin/bash 

# Set the language. This is required for some Python tools.
# Fix 'perl: warning: Setting locale failed.'
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

function _setup_darwin() {
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo "~> homebrew"
  brew tap Homebrew/bundle
}

function _setup_zsh() {
  echo -e "~> zsh\n"
  mkdir -p $HOME/.zsh
  cp -R zsh/{*.zsh,plugins} $HOME/.zsh/
  cp -R zsh/zshrc $HOME/.zshrc

  echo "~> git"
  mkdir -p $HOME/.git
  cp -R git/* $HOME/.git
  cp -R git/.gitconfig $HOME/.gitconfig
  cp -R git/.gitconfig.lib $HOME/.gitconfig.lib

#  echo "~> antibody plugin"
#  sudo dnf install https://github.com/getantibody/antibody/releases/download/v6.1.1/antibody_6.1.1_linux_amd64.rpm
}

_setup_darwin
_setup_zsh
exit 0