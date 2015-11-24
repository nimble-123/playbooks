#!/bin/bash -e
# Add user directories, files, and symlinks

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

# Stow link files

if [ -d ${HOME}/config/dotfiles ]; then
	stow -t ${HOME} -d ${HOME}/config/dotfiles git
fi

# TODO: stow can't seem to force override, fix this hack
#rm ~/.bash_profile
#rm ~/.bashrc
#stow -t ${HOME} -d ${HOME}/config/dotfiles bash

