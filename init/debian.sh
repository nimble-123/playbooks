#!/usr/bin/env bash
# To run this script
# wget -O - https://raw.githubusercontent.com/dghubble/playbooks/master/debian.sh | bash

echo "### Playbooks Bootstrap (Debian/Ubuntu)"
sudo apt-get update
sudo apt-get install -y python-pip ansible git

if [ ! -d ~/sources/playbooks ]; then
  echo "### Cloning playbooks"
  git clone https://github.com/dghubble/playbooks ~/sources/playbooks
else
  echo "### Updating playbooks"
  cd ~/sources/playbooks
  git pull --ff-only
fi