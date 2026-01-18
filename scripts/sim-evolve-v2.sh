#!/bin/bash

# Colors
CYAN='\033[0;36m'
WHITE='\033[1;37m'
DIM='\033[0;90m'
GREEN='\033[0;32m'
NC='\033[0m'

type_text() {
    text="$1"
    for ((i=0; i<${#text}; i++)); do
        printf "%s" "${text:$i:1}"
        sleep 0.018
    done
    echo ""
}

clear
sleep 0.3

# Initial state
echo ""
echo -e "${CYAN}     . * .       ${NC}"
echo ""
echo -e "${CYAN}       @         ${NC}"
echo -e "${CYAN}      /|\\        ${NC}"
echo -e "${CYAN}       |         ${NC}"
echo -e "${CYAN}      / \\        ${NC}"
echo ""
sleep 0.5

echo -e "${WHITE}"
type_text "Hey. I noticed something."
echo -e "${NC}"
sleep 0.4

echo ""
type_text "Every time you ship, you do the same thing:"
echo ""
sleep 0.3

# Animated list
items=("Run tests" "Bump the version" "Update the changelog" "Create a git tag" "Push and deploy")
for item in "${items[@]}"; do
    echo -ne "  ${DIM}->${NC} "
    type_text "$item"
    sleep 0.1
done

echo ""
sleep 0.4

echo -e "${DIM}"
type_text "Same steps. Same order. Every time."
echo -e "${NC}"
sleep 0.5

echo ""
type_text "Want me to just do that when you say ship?"
echo ""
sleep 0.8

echo -ne "${CYAN}> ${NC}"
sleep 0.2
type_text "yeah"
sleep 0.4

echo ""

# Evolution animation - pulsing
for i in {1..4}; do
    clear
    echo ""
    echo -e "${CYAN}     . * .       ${NC}"
    echo ""
    echo -e "${CYAN}       @         ${NC}"
    echo -e "${CYAN}      /|\\        ${NC}"
    echo -e "${CYAN}       |         ${NC}"
    echo -e "${CYAN}      / \\        ${NC}"
    echo ""
    echo -e "        ${DIM}...${NC}"
    sleep 0.12

    clear
    echo ""
    echo -e "${WHITE}     . * .       ${NC}"
    echo ""
    echo -e "${WHITE}       @         ${NC}"
    echo -e "${WHITE}      /|\\        ${NC}"
    echo -e "${WHITE}       |         ${NC}"
    echo -e "${WHITE}      / \\        ${NC}"
    echo ""
    echo -e "        ${DIM}...${NC}"
    sleep 0.12
done

# Final
clear
echo ""
echo -e "${CYAN}     . * .       ${NC}"
echo ""
echo -e "${CYAN}       @         ${NC}"
echo -e "${CYAN}      /|\\        ${NC}"
echo -e "${CYAN}       |         ${NC}"
echo -e "${CYAN}      / \\        ${NC}"
echo ""
sleep 0.3

echo -e "${WHITE}"
type_text "Done."
echo -e "${NC}"
sleep 0.2

echo ""
echo -ne "${GREEN}+${NC} "
echo -e "${CYAN}/homunculus:ship${NC} ${DIM}-- runs your full release flow${NC}"
echo ""
sleep 0.3

type_text "Just tell me when you're ready to ship."
echo ""
sleep 2
