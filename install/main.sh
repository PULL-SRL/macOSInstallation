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
echo "###########hola 1###########"
echo "#############################"
echo "#############################"

# Repository
source <(curl -sL https://raw.githubusercontent.com/PULL-SRL/macOSInstallation/main/repository/config.sh)

# bash <(curl -L https://raw.githubusercontent.com/PULL-SRL/macOSInstallation/main/repository/main.sh) #${gitHubUsername} ${gitHubRepository} ${cloneFolder}
# cd ${cloneFolder}
echo ">>>>"
echo ${cloneFolder}
echo "<<<<"


# Navigation
# source nav/main.sh # navigation
