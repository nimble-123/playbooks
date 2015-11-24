#!/bin/bash -e
# To run this script
# wget -O - https://raw.githubusercontent.com/dghubble/playbooks/master/init/fedora.sh | bash

echo "Phoenix Bootstrap (Fedora)"

echo "Installing git..."
sudo dnf install -yq git

echo "Installing Ansible..."
sudo dnf install -yq ansible

if [ ! -d ~/sources/playbooks ]; then
  echo "Cloning Phoenix..."
  git clone https://github.com/dghubble/playbooks ~/sources/phoenix
else
  echo "Updating Phoenix..."
  cd ~/sources/phoenix
  git pull --ff-only
fi