#!/bin/bash -e

echo "Checking for Google Cloud"
if [ ! -d ~/sources/google-cloud-sdk ]; then
	echo "Downloading Google Cloud"
	mkdir -p ~/sources/google-cloud-sdk
	wget -O ~/sources/google-cloud-sdk.tar.gz https://dl.google.com/dl/cloudsdk/channels/rapid/google-cloud-sdk.tar.gz
	tar -xvf ~/sources/google-cloud-sdk.tar.gz -C ~/sources
	echo "Installing Google Cloud"
	pushd ~/sources/google-cloud-sdk
	./install.sh
	popd
	rm ~/sources/google-cloud-sdk.tar.gz
fi