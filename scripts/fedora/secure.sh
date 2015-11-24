#!/bin/bash -e
# Symlinks to online secrets

if [ ! -h ~/.ssh ]; then
	echo "Creating .ssh symlink"
	rm -rf ${HOME}/.ssh
	ln -s ${HOME}/.secrets/online/ssh ${HOME}/.ssh
fi

if [ ! -h ~/.gnupg ]; then
	echo "Creating .gnupg symlink"
	rm -rf ${HOME}/.gnupg
	ln -s ${HOME}/.secrets/online/gpg ${HOME}/.gnupg
fi
