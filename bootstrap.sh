#!/usr/bin/env bash


# Right folder please
cd "$(dirname "${BASH_SOURCE}")";

# Make sure all modules are loaded
git submodule update --init --recursive
git submodule update --recursive
git clean -df

# Copy dotfiles, overwrites stuff
rsync --exclude ".git/" --exclude "bootstrap.sh" --exclude "README.md" -avh --no-perms . ~;

chsh -s $(which zsh)
