#!/bin/bash -e

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



