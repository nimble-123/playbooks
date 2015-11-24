#!/bin/bash -e

# Golang
dnf install -yq golang
# see unprivileged.sh for GVM installer
dnf install -yq bison glibc-devel

# Python
dnf install -yq python python3 python-pip
pip install virtualenv
pip install -q mkdocs sphinx  # docs

# Virtual Machines
echo "Installing VirtualBox..."
dnf install -yq VirtualBox-5.0
usermod -a -G vboxusers dghubble

dnf install -yq vagrant

# Containers
dnf install -yq docker docker-compose

# Network
dnf install -yq wireshark wireshark-gnome


