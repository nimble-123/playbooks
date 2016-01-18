#!/bin/bash -e

# Golang
dnf install -yq golang
# see unprivileged.sh for GVM installer
dnf install -yq bison glibc-devel

# Python
dnf install -yq python python3 python-pip
pip install virtualenv
pip install -q mkdocs sphinx  # docs

# Virtualization
dnf install -yq libvirt
dnf install -yq vagrant

# Containers
dnf install -yq docker

# Network
dnf install -yq wireshark wireshark-gnome

# rkt development
dnf install -yq squashfs-tools autoconf glibc-devel glibc-static
