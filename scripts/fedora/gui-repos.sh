#!/bin/bash -e
# Add DNF Repositories under /etc/yum.repos.d/

# Google Chrome
sudo cat << EOF > /etc/yum.repos.d/google-chrome.repo
[google-chrome]
name=google-chrome - \$basearch
baseurl=http://dl.google.com/linux/chrome/rpm/stable/\$basearch
enabled=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub
EOF

# Dropbox (does not yet support Fedora 23) TODO: change 22 -> $releasever
sudo cat << EOF > /etc/yum.repos.d/dropbox.repo
[Dropbox]
name=Dropbox Repository
baseurl=http://linux.dropbox.com/fedora/22/
gpgkey=https://linux.dropbox.com/fedora/rpm-public-key.asc
EOF

# VirtualBox
dnf config-manager -y --add-repo http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo

# Update package lists
dnf update -y
