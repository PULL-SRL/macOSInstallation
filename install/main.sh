#!/bin/bash

# Config
declare gitHubUsername=PULL-SRL
declare gitHubRepository=macOSInstallation

# Other configuration (don't modify)
declare cloneFolder=~/${gitHubRepository}

clear

echo ${gitHubUsername}
echo ${gitHubRepository}
echo ${cloneFolder}

echo "source clone folder repo main sh"
# source ${cloneFolder}/repository/main.sh # clone or update repository
bash <(curl -L https://raw.githubusercontent.com/PULL-SRL/macOSInstallation/main/repository/main.sh)


# cd ${cloneFolder}

# source nav/main.sh # navigation