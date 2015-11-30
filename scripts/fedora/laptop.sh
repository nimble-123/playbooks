#!/bin/bash -e

./essential.sh
./developer.sh
./gui-repos.sh
./gui-apps.sh
sudo -u ${USERNAME} ./secure.sh
sudo -u ${USERNAME} ./files.sh
./fonts.sh
echo "Finished"
