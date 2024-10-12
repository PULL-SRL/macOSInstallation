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
