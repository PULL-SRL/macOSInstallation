#!/bin/bash

source core/config.sh

# title h1
@() {
    title=$1
    step=$2
    
    if test -z "${step}"; then
        printf "\n${bcyan}${title}\n\n"
    else
        printf "\n${bcyan}${title} ${dim} ${step}\n\n"
    fi    
}

# title h2
@@() {
    title=$1
    echo ""
    echo "${red}${title} ${reset}"
}

# paragraph p
_() {
    paragraph=$1
    color=$2
    status=$3
    echo ""
    echo "${reset}${color}${status}${paragraph}${reset}"
}

# dimed paragraph p
__() {
    _ "$1" ${dim}
}

# success paragraph p
_s() {
    _ "$1" ${bgreen} "Success: "
}

# info paragraph p
_i() {
    _ "$1" ${cyan} "Info: "
}

# warning paragraph p
_w() {
    _ "$1" ${byellow} "Warning: "
}

# error paragraph p
_e() {
    _ "$1" ${bred} "Error: "
}

renew_sudo() { # helper function for when the following command needs 'sudo' active but shouldn't be called with it
  sudo -S -v <<< "${sudo_password}" 2> /dev/null
}
