#!/bin/bash -e

echo "Installing fonts..."
dnf install -yq google-droid-sans-fonts google-droid-serif-fonts google-droid-sans-mono-fonts
echo "Remember to add droid fonts in Google Chrome and Sublime"