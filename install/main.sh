#!/bin/bash

# Config
declare gitHubUsername=PULL-SRL
declare gitHubRepository=macOSInstallation

# Other configuration (don't modify)
declare cloneFolder=~/${gitHubRepository}

clear



echo "curl con chat"
echo "curl con chat"

# source ${cloneFolder}/repository/main.sh # clone or update repository
bash <(curl -L https://raw.githubusercontent.com/PULL-SRL/macOSInstallation/main/repository/main.sh | bash -s -- mauricio ${gitHubUsername} ${gitHubRepository} ${cloneFolder})


# cd ${cloneFolder}

# source nav/main.sh # navigation