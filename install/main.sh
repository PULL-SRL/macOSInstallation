#!/bin/bash

clear

# Repository
source /dev/stdin <<< "$(curl --insecure https://raw.githubusercontent.com/PULL-SRL/macOSInstallation/main/repository/config.sh)" # get config
# bash <(curl -L https://raw.githubusercontent.com/PULL-SRL/macOSInstallation/main/repository/main.sh) ${gitHubUsername} ${gitHubRepository} ${cloneFolder} # get repository

# Navigation
source nav/main.sh
