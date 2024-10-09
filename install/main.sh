#!/bin/bash

clear

# Get repository config
source /dev/stdin <<< "$(curl --insecure https://raw.githubusercontent.com/PULL-SRL/macOSInstallation/main/repository/config.sh)" # get config

# Get repository
bash <(curl -L https://raw.githubusercontent.com/PULL-SRL/macOSInstallation/main/repository/main.sh) ${gitHubUsername} ${gitHubRepository} ${cloneFolder} # get repository

# Download repository
if [[ ! -d ${cloneFolder} ]]; then
    # Clone
    echo ""
    echo "Downloading repository... install"
    git clone https://github.com/${gitHubUsername}/${gitHubRepository}.git ${cloneFolder}
else
    # Update
    echo ""
    echo "Updating repository...install"
    cd $cloneFolder
    git pull origin main
fi

# Update remote to use SSH
# cd ${cloneFolder}
# git remote rm origin
# git remote add origin git@github.com:${gitHubUsername}/${gitHubRepository}
# git push --set-upstream origin main

# Start navigation
cd ${cloneFolder}
source nav/main.sh
