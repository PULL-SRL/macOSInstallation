#!/bin/bash

source core/functions.sh
source nav/config.sh
source nav/functions.sh

# Capture keyboard input
while true; do
    draw_menu

    read -rsn1 input

    case "$input" in
        $'\x1b')  # If it's an escape sequence
            read -rsn2 input
            case "$input" in
                '[A')  # Up arrow key
                    ((current_option--))
                    if [ "$current_option" -lt 0 ]; then
                        # Wrap around to the last option
                        current_option=$((num_options - 1))
                    fi
                    ;;
                '[B')  # Down arrow key
                    ((current_option++))
                    if [ "$current_option" -ge "$num_options" ]; then
                        # Wrap around to the first option
                        current_option=0
                    fi
                    ;;
            esac
            ;;
        "")  # Enter key
            case "$current_option" in
                0) installationProfile='manager';;
                1) installationProfile='administrativePersonnel';;
                2) installationProfile="developer";;
                3) installationProfile="graphicDesigner";;
                4) installationProfile="videoEditor";;
                5) 
                    clear
                    _ "Exiting..."
                    _ ""
                    exit 0
                    ;;
            esac
            break  # Exit the loop after showing the message
            ;;
    esac
done

clear

source installationProfile/$installationProfile.sh
