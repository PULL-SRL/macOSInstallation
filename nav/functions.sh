

# Function to draw the menu
draw_menu() {

    clear

    echo -e "${BLUE}Select an option using the arrow keys and Enter${NC}"
    
    for i in "${!options[@]}"; do
        if [ "$i" -eq "$current_option" ]; then
            # Highlight the currently selected option
            echo -e "${GREEN}>  ${YELLOW}${options[$i]}${NC}"
        else
            # Display non-selected options
            echo -e "   ${options[$i]}"
        fi
    done
}

# Function to display a message
show_message() {
    local message=$1
    clear
    echo -e "${BLUE}${message}${NC}"
    sleep 1  # Display the message for 1 second
}
