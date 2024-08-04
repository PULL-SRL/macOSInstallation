#!/bin/bash

echo "iiiiiiiiiiii"
echo "iiiiiiiiiiii"
echo "iiiiiiiiiiii"
# Recibir los parámetros
param1=$1
param2=$2
param3=$3
param4=$4

# Usar los parámetros
echo "Primer parámetro: $param1"
echo "Segundo parámetro: $param2"
echo "Tercer parámetro: $param3"
echo "Cuarto parámetro: $param4"

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