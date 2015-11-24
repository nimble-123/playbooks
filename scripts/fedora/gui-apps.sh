#!/bin/bash -e

echo "Installing Dropbox..."
dnf install -yq pygpgme
dnf install -yq nautilus-dropbox

# Virtual Machines
echo "Installing VirtualBox..."
dnf install -yq VirtualBox-5.0
usermod -a -G vboxusers dghubble

# Desktop
dnf install -yq gnome-tweak-tool

# Photos
dnf install -yq gimp

# Disks
dnf install -yq gparted

# libvirt Virtual Machine Manager GUI
dnf install -yq virt-manager

echo "Installing Google Chrome..."
dnf install -yq google-chrome-stable

# Chat Apps
dnf install -yq pidgin
# c'mon slack :/

# Networking
dnf install -yq wireshark-gnome
