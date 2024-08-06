#!/bin/bash

source core/config.sh

# Draw navigation manu
draw_menu() {

    clear

    @ "Select a profile:" "› Use arrow-keys. Return to submit."

    for i in "${!options[@]}"; do
        if [ "$i" -eq "$current_option" ]; then
            echo -e "${green}${bold}>  ${yellow}${bold}${options[$i]}${reset}" # Highlight the currently selected option
        else
            echo -e "${reset}   ${options[$i]}${reset}" # Display non-selected options
        fi
    done
}

# Display a message (to be removed later...)
show_message() {
    local message=$1
    clear
    echo -e "${BLUE}${message}${NC}"
    sleep 1  # Display the message for 1 second
}
