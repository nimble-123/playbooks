#!/bin/bash -e

./essential.sh
./developer.sh
sudo -u ${USERNAME} ./secure.sh
sudo -u ${USERNAME} ./files.sh
echo "Finished"
