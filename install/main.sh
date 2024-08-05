#!/bin/bash

# Config
declare gitHubUsername=PULL-SRL
declare gitHubRepository=macOSInstallation

# Other configuration (don't modify)
declare cloneFolder=~/${gitHubRepository}

clear


echo "2222222"
echo "2222222"
echo "2222222"
echo "2222222"
echo "2222222"
echo "2222222"


# source ${cloneFolder}/repository/main.sh # clone or update repository
bash <(curl -L https://raw.githubusercontent.com/PULL-SRL/macOSInstallation/main/repository/main.sh) ${gitHubUsername} ${gitHubRepository} ${cloneFolder}

echo ${cloneFolder}
echo "before in the folder"
echo ${cloneFolder}
cd ${cloneFolder}
echo ${cloneFolder}
echo "after in the folder"

# source nav/main.sh # navigation
