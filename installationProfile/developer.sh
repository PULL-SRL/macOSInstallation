#!/bin/bash

# Confirm before proceeding
source proceedConfirmation/main.sh

# Ask for sudo and Git email and name
source askCredentials.sh

# Install ssh key
source sshKey/main.sh

# Homebrew software (casks) for this profile
# Default software (casks) will be installed by defaut when running homebrew/main.sh file
casks=(
    # browsers
    tor-browser
    firefox

    # database
    sequel-ace # MySQL & MariaDB GUI

    # development related
    visual-studio-code # Source code editor
    figma # Design and prototyping
    postman # Test REST APIs. Makes HTTP request
)

# Homebrew
source homebrew/main.sh

# Oh My Zsh
source ohMyZsh/main.sh

# Copy files
source files/main.sh

# Set Git configuration
git config --global user.email "$git_email"
git config --global user.name "$git_name"

echo "Git configuration completed:"
git config --global user.email
git config --global user.name

# Installation complete
_s "Completed. "