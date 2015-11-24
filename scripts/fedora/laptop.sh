#!/bin/bash -e

./repositories.sh
./essential.sh
./developer.sh
./gui-apps.sh
sudo -u ${USERNAME} ./secure.sh
sudo -u ${USERNAME} ./files.sh
sudo -u ${USERNAME} ./unprivileged.sh

