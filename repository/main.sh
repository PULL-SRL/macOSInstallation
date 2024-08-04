#!/bin/bash

echo "ooooooooooooo"
echo "ooooooooooooo"
echo "ooooooooooooo"
echo "Argument 1: $1"
echo "Argument 2: $2"
echo "Argument 2: $3"
echo "Argument 2: $4"
echo "ooooooooooooo"
echo "ooooooooooooo"
echo "ooooooooooooo"

echo "end"

# Clone, repository folder is empty
# if [[ ! -d ${cloneFolder} ]]; then
#     echo ""
#     echo "Downloading Mac OS Installation..."
#     git clone https://github.com/${gitHubUsername}/${gitHubRepository}.git ${cloneFolder}
# fi

# # Update, repository folder already exists
# if [[ -d ${cloneFolder} ]]; then
#     echo ""
#     echo "Updating Mac OS Installation..."
#     cd $cloneFolder
#     git pull origin main
# fi

# Update remote to use SSH
# echo "before cd clone folder"
# cd ${cloneFolder}
# echo "after cd clone folder"
# git remote rm origin
# git remote add origin git@github.com:${gitHubUsername}/${gitHubRepository}
# git push --set-upstream origin main
# echo "to ~"
# cd ~