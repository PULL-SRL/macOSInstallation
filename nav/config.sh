#!/bin/bash


# Nav options
options=("Manager" "Administrative Personnel" "Developer" "Graphic Designer" "Video Editor" "Exit")
num_options=${#options[@]}
current_option=0


# Color codes
RED='\033[0;31m'     # Red
# GREEN='\033[0;32m'   # Green
# YELLOW='\033[0;33m'  # Yellow
BLUE='\033[0;34m'    # Blue
NC='\033[0m'         # No Color (reset to default)