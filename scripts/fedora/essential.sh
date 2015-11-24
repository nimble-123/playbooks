#!/bin/bash -e

dnf install -yq binutils gcc make patch libgomp glibc-headers glibc-devel
dnf install -yq kernel-headers kernel-devel dkms

dnf install -yq vim nano
dnf install -yq stow

echo "Installing Dropbox..."
dnf install -yq pygpgme
dnf install -yq nautilus-dropbox







