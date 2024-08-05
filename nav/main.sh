#!/bin/bash

# source core/config.sh
source nav/config.sh
source nav/functions.sh

# Capture keyboard input
while true; do
    draw_menu

    read -rsn1 input

    case "$input" in
        $'\x1b')  # if it's an escape sequence
            read -rsn2 input

            case "$input" in
                '[A')  # up arrow key
                    ((current_option--))
                    if [ "$current_option" -lt 0 ]; then
                        # wrap around to the last option
                        current_option=$((num_options - 1))
                    fi
                    ;;
                '[B')  # down arrow key
                    ((current_option++))
                    if [ "$current_option" -ge "$num_options" ]; then
                        # wrap around to the first option
                        current_option=0
                    fi
                    ;;
            esac
            ;;
        "")  # enter key
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

