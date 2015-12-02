#!/bin/bash -e
# Add user directories, files, and symlinks

# Regular Symbolic links

if [ ! -h ~/workspace ]; then
	echo "Creating workspace symlink"
	ln -s ~/Dropbox/workspace ~/workspace
fi

if [ ! -h ~/.kube ]; then
	echo "Creating .kube symlink"
	ln -s ~/Dropbox/config/kube ~/.kube
fi

# Dotfiles

if [ ! -d ~/Dropbox/config/dotfiles ]; then
  echo "Cloning dotfiles..."
  mkdir -p ~/Dropbox/config
  git clone https://github.com/dghubble/dotfiles ~/Dropbox/config/dotfiles
else
  echo "Updating dotfiles..."
  cd ~/Dropbox/config/dotfiles && git pull origin master --ff-only
fi

stow -t ~ -d ~/Dropbox/config/dotfiles git
stow -t ~ -d ~/Dropbox/config/dotfiles vim

# TODO: stow can't seem to force override, fix this hack
# mv ~/.bash_profile ~/.bash_profile.old
# mv ~/.bashrc ~/.bashrc.old
stow -t ~ -d ~/Dropbox/config/dotfiles bash-linux

