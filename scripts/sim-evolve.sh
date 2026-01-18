#!/bin/bash

# Colors
CYAN='\033[0;36m'
WHITE='\033[1;37m'
DIM='\033[0;90m'
GREEN='\033[0;32m'
NC='\033[0m'

slow() {
    echo -e "$1"
    sleep 0.3
}

clear
sleep 0.3

echo -e "${CYAN}"
echo "     ·  ✧  ·"
echo ""
echo "       ◉"
echo "      ╱│╲"
echo "       │"
echo "      ╱ ╲"
echo -e "${NC}"

sleep 0.6

slow "${WHITE}Hey. I noticed something.${NC}"
echo ""
sleep 0.5

slow "Every time you ship, you do the same thing:"
echo ""
sleep 0.2
echo -e "  ${DIM}→${NC} Run tests"
sleep 0.15
echo -e "  ${DIM}→${NC} Bump the version"
sleep 0.15
echo -e "  ${DIM}→${NC} Update the changelog"
sleep 0.15
echo -e "  ${DIM}→${NC} Create a git tag"
sleep 0.15
echo -e "  ${DIM}→${NC} Push and deploy"
echo ""
sleep 0.5

slow "${DIM}Same steps. Same order. Every time.${NC}"
echo ""
sleep 0.6

slow "Want me to just do that when you say ${CYAN}ship${NC}?"
echo ""
sleep 1

echo -e "${CYAN}> ${WHITE}yeah${NC}"
sleep 0.8

echo ""
slow "${WHITE}Done.${NC}"
echo ""
sleep 0.4

echo -e "${GREEN}✓${NC} ${CYAN}/homunculus:ship${NC} — runs your full release flow"
echo ""
sleep 0.3

slow "Just tell me when you're ready to ship."
echo ""
sleep 2
