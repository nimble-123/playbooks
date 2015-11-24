#!/bin/bash -e
# To run this script
# wget -O - https://raw.githubusercontent.com/dghubble/playbooks/master/init/fedora.sh | bash

echo "Phoenix Bootstrap (Fedora)"
sudo dnf update -y
sudo dnf install -yq ansible

if [ ! -d ~/sources/playbooks ]; then
  echo "Cloning Phoenix..."
  git clone https://github.com/dghubble/playbooks ~/sources/phoenix
else
  echo "Updating Phoenix..."
  cd ~/sources/phoenix
  git pull --ff-only
fi