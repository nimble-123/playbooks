#!/bin/bash -e

dnf install -yq binutils gcc make patch libgomp glibc-headers glibc-devel
dnf install -yq kernel-headers kernel-devel dkms

dnf install -yq vim gvim nano
dnf install -yq stow
