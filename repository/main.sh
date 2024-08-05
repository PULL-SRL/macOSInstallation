#!/bin/bash

# Receive parameters
declare gitHubUsername=$1
declare gitHubRepository=$2
declare cloneFolder=$3

# Repository folder is empty, clone it
if [[ ! -d ${cloneFolder} ]]; then
    echo ""
    echo "Downloading Mac OS Installation..."
    git clone https://github.com/${gitHubUsername}/${gitHubRepository}.git ${cloneFolder}
fi

# Repository folder exists, update it
if [[ -d ${cloneFolder} ]]; then
    echo ""
    echo "Updating Mac OS Installation..."
    cd $cloneFolder
    git pull origin main
fi

# Update remote to use SSH
cd ${cloneFolder}
git remote rm origin
git remote add origin git@github.com:${gitHubUsername}/${gitHubRepository}
git push --set-upstream origin main
