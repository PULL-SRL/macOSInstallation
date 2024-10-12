#!/bin/bash

# Confirm before proceeding
# source proceeedConfirmation/main.sh

# Install ssh key
# source sshKey/main.sh

# Homebrew software (casks) for this profile
# Default software (casks) will be installed by defaut
# when running homebrew/main.sh file
casks=(
    # browsers
    tor-browser

    # database
    sequel-ace # MySQL & MariaDB GUI

    # development related
    visual-studio-code # Source code editor
    sourcetree # Git GUI
    figma # Design and prototyping
    iterm2 # Terminal alternative
    postman # Test REST APIs. Makes HTTP request
)

# Merge defaultCasks with installationProfile casks
casks=("${defaultCasks[@]}" "${casks[@]}")

# Homebrew
source homebrew/main.sh

_i "Downloading Homebrew casks..."
for cask in ${casks[@]}; do
    [[ ${cask} == 'spotify' ]] && continue
    [[ ${cask} == 'hyperdock' ]] && continue    
    [[ ${cask} == 'homebrew/cask-versions/google-chrome-canary' ]] && continue
    _s "Downloading:  ${cask}"
    brew fetch --cask ${cask}
done

_i "Installing Homebrew casks..."
for cask in ${casks[@]}; do
	renew_sudo
    _s "Installing:  ${cask}"
    brew install --cask ${cask}
done