#!/bin/bash

# Colors
CYAN='\033[0;36m'
WHITE='\033[1;37m'
DIM='\033[0;90m'
NC='\033[0m'

type_text() {
    text="$1"
    for ((i=0; i<${#text}; i++)); do
        printf "%s" "${text:$i:1}"
        sleep 0.02
    done
    echo ""
}

clear
sleep 0.3

# Animated vessel formation - basic ASCII
frames=(
"        .        "
"        .

       ( )       "
"        .

       (.)
       /|\\       "
"        .

       (.)
       /|\\
        |
       / \\       "
)

for frame in "${frames[@]}"; do
    clear
    echo ""
    echo -e "${CYAN}${frame}${NC}"
    sleep 0.2
done

# Add base
clear
echo ""
echo -e "${CYAN}        .        ${NC}"
echo ""
echo -e "${CYAN}       (.)       ${NC}"
echo -e "${CYAN}       /|\\       ${NC}"
echo -e "${CYAN}        |        ${NC}"
echo -e "${CYAN}       / \\       ${NC}"
echo -e "${CYAN}    [=======]    ${NC}"
echo ""
sleep 0.5

echo -e "${WHITE}"
type_text "Hey. I'm here."
echo -e "${NC}"
sleep 0.5

echo ""
type_text "What are you working on?"
echo ""
sleep 0.8

# User response
echo -ne "${CYAN}> ${NC}"
sleep 0.3
type_text "a crypto trading bot"
sleep 0.6

echo ""
type_text "Trading bot. Interesting."
sleep 0.3
type_text "What do you call it?"
echo ""
sleep 0.5

echo -ne "${CYAN}> ${NC}"
sleep 0.2
type_text "alphahunter"
sleep 0.5

echo ""
type_text "Last thing."
sleep 0.2
type_text "How should I be?"
echo ""
sleep 0.2

echo -e "  ${DIM}1${NC} Technical"
echo -e "  ${DIM}2${NC} Semi-technical"
echo -e "  ${DIM}3${NC} Non-technical"
echo -e "  ${DIM}4${NC} Chaotic"
echo ""
sleep 0.4

echo -ne "${CYAN}> ${NC}"
sleep 0.2
type_text "1"
sleep 0.4

# Awakening
clear
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
type_text "alphahunter. Got it."
echo -e "${NC}"
sleep 0.3

echo ""
type_text "I'll watch. Learn. Stay out of your way unless I can help."
echo ""
sleep 0.3

echo -e "${WHITE}"
type_text "Go."
echo -e "${NC}"
echo ""
sleep 2
