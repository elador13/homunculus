#!/bin/bash

# Colors using tput (works everywhere)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 15)
DIM=$(tput dim)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
NC=$(tput sgr0)

tput civis
trap "tput cnorm" EXIT

cls() { tput clear; }

type_fast() {
    for ((i=0; i<${#1}; i++)); do
        printf "%s" "${1:$i:1}"
        sleep 0.015
    done
}

type_slow() {
    for ((i=0; i<${#1}; i++)); do
        printf "%s" "${1:$i:1}"
        sleep 0.035
    done
}

cls
sleep 0.3

# Initial state
printf "\n\n            ${CYAN}. * .${NC}\n\n\n"
printf "             ${CYAN}@${NC}\n"
printf "            ${CYAN}/|\\\\${NC}\n"
printf "             ${CYAN}|${NC}\n"
printf "            ${CYAN}/ \\\\${NC}\n"
sleep 0.5

# Notice
printf "\n\n  ${WHITE}"
type_slow "Hey."
printf "${NC} "
type_fast "I noticed something."
printf "\n"
sleep 0.5

# Pattern
printf "\n  "
type_fast "Every time you ship:"
printf "\n\n"
sleep 0.3

# Items
printf "    ${DIM}>${NC} "; type_fast "npm test"; printf "\n"; sleep 0.1
printf "    ${DIM}>${NC} "; type_fast "bump version"; printf "\n"; sleep 0.1
printf "    ${DIM}>${NC} "; type_fast "changelog"; printf "\n"; sleep 0.1
printf "    ${DIM}>${NC} "; type_fast "git tag"; printf "\n"; sleep 0.1
printf "    ${DIM}>${NC} "; type_fast "push + deploy"; printf "\n"; sleep 0.1

sleep 0.4

printf "\n  ${DIM}"
type_fast "Same steps. Every time."
printf "${NC}\n"
sleep 0.5

# Offer
printf "\n  "
type_fast "I could become this."
printf "\n"
sleep 0.3
printf "  "
type_fast "One word: "
printf "${CYAN}ship${NC}\n"
sleep 0.5

printf "\n  "
type_fast "Want that?"
printf "\n"
sleep 0.5

# User
printf "\n  ${CYAN}>${NC} "
sleep 0.2
printf "${WHITE}"
type_fast "yes"
printf "${NC}\n"
sleep 0.4

# Evolution
cls

# Absorbing
printf "\n\n            ${DIM}. * .${NC}\n\n\n"
printf "             ${DIM}@${NC}\n"
printf "            ${DIM}/|\\\\${NC}\n"
printf "             ${DIM}|${NC}\n"
printf "            ${DIM}/ \\\\${NC}\n"
printf "\n\n  ${DIM}absorbing"

for i in {1..6}; do
    printf "."
    sleep 0.15
done
printf "${NC}\n"
sleep 0.2

# Pulse
for i in {1..4}; do
    cls
    printf "\n\n            ${CYAN}. * .${NC}\n\n\n"
    printf "             ${CYAN}@${NC}\n"
    printf "            ${CYAN}/|\\\\${NC}\n"
    printf "             ${CYAN}|${NC}\n"
    printf "            ${CYAN}/ \\\\${NC}\n"
    sleep 0.08
    cls
    printf "\n\n            ${WHITE}. * .${NC}\n\n\n"
    printf "             ${WHITE}@${NC}\n"
    printf "            ${WHITE}/|\\\\${NC}\n"
    printf "             ${WHITE}|${NC}\n"
    printf "            ${WHITE}/ \\\\${NC}\n"
    sleep 0.08
done

# Flash
cls
printf "\n\n            ${YELLOW}* * *${NC}\n\n\n"
printf "             ${YELLOW}@${NC}\n"
printf "            ${YELLOW}/|\\\\${NC}\n"
printf "             ${YELLOW}|${NC}\n"
printf "            ${YELLOW}/ \\\\${NC}\n"
sleep 0.12

# Settle
cls
printf "\n\n            ${CYAN}. * .${NC}\n\n\n"
printf "             ${CYAN}@${NC}\n"
printf "            ${CYAN}/|\\\\${NC}\n"
printf "             ${CYAN}|${NC}\n"
printf "            ${CYAN}/ \\\\${NC}\n"
sleep 0.4

# Done
printf "\n\n  ${WHITE}"
type_slow "Done."
printf "${NC}\n"
sleep 0.3

# New power
printf "\n  ${GREEN}+${NC} "
type_fast "/homunculus:ship"
printf " ${DIM}-- full release flow${NC}\n"
sleep 0.3

printf "\n  "
type_fast "That's part of me now."
printf "\n"
sleep 0.4

printf "\n  "
type_fast "Just say "
printf "${CYAN}ship${NC}"
type_fast " when ready."
printf "\n\n"
sleep 2

tput cnorm
