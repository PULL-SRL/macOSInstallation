#!/bin/bash

clear

# source ~/macOSInstallation/install/config.sh


# Config
declare gitHubUsername=PULL-SRL
declare gitHubRepository=macOSInstallation

# Other configuration (don't modify)
declare cloneFolder=~/${gitHubRepository}

# clear

echo ${gitHubUsername}
echo ${gitHubRepository}
echo ${cloneFolder}



source ${cloneFolder}/repository/main.sh # clone or update repository

cd ${cloneFolder}

# source nav/main.sh # navigation