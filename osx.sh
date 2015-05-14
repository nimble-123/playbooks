#!/bin/bash
# To run this script
# curl -s https://raw.githubusercontent.com/dghubble/playbooks/master/osx.sh | bash

echo "### Playbooks Bootstrap (OSX)"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install ansible git

if [ ! -d ~/sources/playbooks ]; then
  echo "### Cloning playbooks"
  git clone https://github.com/dghubble/playbooks ~/sources/playbooks
else
  echo "### Updating playbooks"
  cd ~/sources/playbooks
  git pull --ff-only
fi
