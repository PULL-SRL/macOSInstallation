#!/bin/bash

# Confirm before proceeding
source proceedConfirmation/main.sh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install ssh key
source sshKey/main.sh

# Homebrew software (casks) for this profile
# Default software (casks) will be installed by defaut
# when running homebrew/main.sh file
casks=(
    # browsers
    tor-browser
    firefox

    # database
    sequel-ace # MySQL & MariaDB GUI

    # development related
    visual-studio-code # Source code editor
    figma # Design and prototyping
    # iterm2 # Terminal alternative
    postman # Test REST APIs. Makes HTTP request
)

# Homebrew
source homebrew/main.sh

# Copy files
source files/main.sh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Installation complete
_s "Completed. "