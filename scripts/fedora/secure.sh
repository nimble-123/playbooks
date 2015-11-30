#!/bin/bash -e
# Symlinks to online secrets

if [ ! -h ~/.ssh ]; then
	echo "Creating .ssh symlink"
	rm -rf ~/.ssh
	ln -s ~/.secrets/common/ssh/ ~/.ssh
fi

if [ ! -h ~/.gnupg ]; then
	echo "Creating .gnupg symlink"
	rm -rf ~/.gnupg
	ln -s ~/.secrets/common/gpg ~/.gnupg
fi
