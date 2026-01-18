#!/bin/bash

# Colors
CYAN='\033[0;36m'
WHITE='\033[1;37m'
DIM='\033[0;90m'
NC='\033[0m'

slow() {
    echo -e "$1"
    sleep 0.25
}

type_slow() {
    text="$1"
    for ((i=0; i<${#text}; i++)); do
        printf "%s" "${text:$i:1}"
        sleep 0.025
    done
    echo ""
}

clear
sleep 0.2

echo -e "${DIM}❯ /homunculus:init${NC}"
sleep 0.8

echo ""
echo -e "${CYAN}"
echo "        ·"
echo ""
echo "       ( )"
echo "       /|\\"
echo "        |"
echo "       / \\"
echo "    ▰▰▰▰▰▰▰"
echo -e "${NC}"

sleep 0.6

slow "${WHITE}Hey. I'm here.${NC}"
echo ""
sleep 0.4

slow "What are we building?"
echo ""
sleep 0.8

echo -ne "${CYAN}❯ ${NC}"
type_slow "a trading bot"
sleep 0.6

echo ""
slow "Trading bot. Got it."
echo ""
sleep 0.3

slow "How do you like to work?"
echo ""
sleep 0.2

echo -e "  ${DIM}1${NC} Technical"
echo -e "  ${DIM}2${NC} Semi-technical"
echo -e "  ${DIM}3${NC} Non-technical"
echo -e "  ${DIM}4${NC} Chaotic"
echo ""
sleep 0.6

echo -ne "${CYAN}❯ ${NC}"
type_slow "1"
sleep 0.5

echo ""
echo -e "${CYAN}"
echo "     ·  ✧  ·"
echo ""
echo "       ◉"
echo "      ╱│╲"
echo "       │"
echo "      ╱ ╲"
echo -e "${NC}"

sleep 0.5

slow "${WHITE}I'm yours now. Let's build.${NC}"
echo ""
sleep 2
