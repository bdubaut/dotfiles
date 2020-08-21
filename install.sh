#!/bin/bash

if [ -f $HOME/.gitconfig ] then
    rm $HOME/.gitconfig
fi

if [ -f $HOME/.bashrc ] then
    rm $HOME/.bashrc
fi


# install Fresh shell
FRESH_LOCAL="$HOME/dotfiles" bash <(curl -sL https://get.freshshell.com)

# Install homebrew
# install tree
# install openssl
# install ruby-build
# Install asdf
# install docker
# install kubernetes & helm
# install terraform
# install git-lfs
# install yamllint
# install yarn
# install pgcli
# install bat
# install the_silver_searcher
# install gh
# install neovim
