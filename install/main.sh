#!/bin/bash

# Config
# declare gitHubUsername=PULL-SRL
# declare gitHubRepository=macOSInstallation

# # Other configuration (don't modify)
# declare cloneFolder=~/${gitHubRepository}

clear

echo "#############################"
echo "#############################"
echo "#############################"
echo "####### s f flags ###########"
echo "#############################"
echo "#############################"

# Repository
# source <(curl -s -f https://raw.githubusercontent.com/PULL-SRL/macOSInstallation/main/repository/config.sh)# >> ~/test.sh

# cd ${cloneFolder}
source /dev/stdin <<< "$(curl --insecure https://raw.githubusercontent.com/PULL-SRL/macOSInstallation/main/repository/config.sh)";
echo ${gitHubUsername} ${gitHubRepository} ${cloneFolder}
echo ">>>>"
bash <(curl -L https://raw.githubusercontent.com/PULL-SRL/macOSInstallation/main/repository/main.sh) ${gitHubUsername} ${gitHubRepository} ${cloneFolder}
echo "<<<<"


# Navigation
# source nav/main.sh # navigation
