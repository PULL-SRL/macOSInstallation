#!/bin/bash

# Confirm before proceeding
source proceedConfirmation/main.sh

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

# Oh My Zsh
source ohMyZsh/main.sh

# Copy files
source files/main.sh


# Installation complete
_s "Completed. "