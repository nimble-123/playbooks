#!/bin/bash -e
# Add user directories, files, and symlinks

# Regular Symbolic links

if [ ! -d ${HOME}/Dropbox ]; then
	echo "Creating Dropbox directory"
	mkdir ${HOME}/Dropbox
fi

if [ ! -h ~/workspace ]; then
	echo "Creating workspace symlink"
	ln -s ${HOME}/Dropbox/workspace ${HOME}/workspace
fi

if [ ! -h ~/config ]; then
	echo "Creating config symlink"
	ln -s ${HOME}/Dropbox/config ${HOME}/config
fi

# Dotfiles

if [ ! -d ${HOME}/config/dotfiles ]; then
  git clone https://github.com/dghubble/dotfiles ${HOME}/config/dotfiles
else
  cd ${HOME}/config/dotfiles && git pull --ff-only
fi

stow -t ${HOME} -d ${HOME}/config/dotfiles git

# TODO: stow can't seem to force override, fix this hack
rm ~/.bash_profile
rm ~/.profile
rm ~/.bashrc
stow -t ${HOME} -d ${HOME}/config/dotfiles bash

