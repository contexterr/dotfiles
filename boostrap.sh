#!/usr/bin/env bash

cd "$HOME";

sudo apt-get install zsh

echo "Cloning contexterr/dotfiles..."
git clone https://github.com/contexterr/dotfiles.git;

echo "Setting up...";
ln -s dotfiles/.gitignore_global .gitignore_global;
rm ~/.zshrc && ln -s dotfiles/.zshrc .zshrc

git config --global core.excludesfile ~/.gitignore_global;