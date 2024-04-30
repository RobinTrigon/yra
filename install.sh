#!/bin/bash

# Color codes
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Check if the user is root
if [ "$(id -u)" -ne 0 ]; then
    echo -e "${RED}This script needs to be run as root to perform the installation tasks.${NC}"
    echo -e "${RED}Please switch to the root user and run the script again.${NC}"
    exit 1
fi

# Check if pip is installed
if ! command -v pip &> /dev/null; then
    echo -e "${YELLOW}pip is not installed. Installing pip...${NC}"
    sudo apt install -y python3-pip
    if [ $? -ne 0 ]; then
        echo -e "${RED}Failed to install pip. Please install pip manually and run the script again.${NC}"
        exit 1
    fi
fi

# Install the 'wad' package using pip
echo -e "${YELLOW}Installing the 'wad' package...${NC}"
pip install wad

# Copy the YRA executable to /bin and make it executable
echo -e "${YELLOW}Copying YRA executable to /bin...${NC}"
cp yra /bin
chmod +x /bin/yra

# Display installation success message
echo -e "${GREEN}[+] Yra installed successfully. Type 'yra -h' for help!${NC}"
