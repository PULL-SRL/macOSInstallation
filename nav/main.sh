#!/bin/bash

# Nav options config
options=("Option 1" "Option 2" "Option 3" "Exit")

# Get config
source nav/config.sh

# Functions
source functions.sh

num_options=${#options[@]}
current_option=0

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
                0) show_message "You selected Option 1";;
                1) show_message "You selected Option 2";;
                2) show_message "You selected Option 3";;
                3) 
                    clear
                    echo -e "${RED}Exiting...${NC}"
                    exit 0
                    ;;
            esac
            break  # Exit the loop after showing the message
            ;;
    esac
done
