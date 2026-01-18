#!/bin/bash

# Colors using tput (works everywhere)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 15)
DIM=$(tput dim)
BOLD=$(tput bold)
NC=$(tput sgr0)

# Hide cursor
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
        sleep 0.04
    done
}

cls
sleep 0.5

# Scene 1: Point appears
for i in {1..4}; do
    cls
    printf "\n\n\n              ${DIM}.${NC}"
    sleep 0.1
    cls
    printf "\n\n\n              ${WHITE}.${NC}"
    sleep 0.1
done

sleep 0.3

# Scene 2: Form builds
cls
printf "\n\n              ${CYAN}.${NC}\n\n"
sleep 0.2

cls
printf "\n\n              ${CYAN}.${NC}\n\n\n             ${CYAN}( )${NC}\n"
sleep 0.2

cls
printf "\n\n              ${CYAN}.${NC}\n\n\n             ${CYAN}(.)${NC}\n             ${CYAN}/|\\\\${NC}\n"
sleep 0.2

cls
printf "\n\n              ${CYAN}.${NC}\n\n\n             ${CYAN}(.)${NC}\n             ${CYAN}/|\\\\${NC}\n              ${CYAN}|${NC}\n             ${CYAN}/ \\\\${NC}\n"
sleep 0.3

# Add base
printf "\n          "
for i in {1..9}; do
    printf "${CYAN}=${NC}"
    sleep 0.04
done
printf "\n"
sleep 0.4

# First words
printf "\n\n  ${WHITE}"
type_slow "Hey."
printf "${NC}"
sleep 0.5
printf "\n\n  "
type_fast "I'm here now."
printf "\n"
sleep 0.7

# Question
printf "\n  "
type_fast "What are we building?"
printf "\n"
sleep 0.8

# User input
printf "\n  ${CYAN}>${NC} "
sleep 0.3
printf "${WHITE}"
type_fast "a saas app"
printf "${NC}\n"
sleep 0.5

# Response
printf "\n  ${DIM}"
type_fast "SaaS app."
printf "${NC} "
type_fast "Got it."
printf "\n"
sleep 0.4
printf "\n  "
type_fast "What's its name?"
printf "\n"
sleep 0.5

# User input
printf "\n  ${CYAN}>${NC} "
sleep 0.2
printf "${WHITE}"
type_fast "orbit"
printf "${NC}\n"
sleep 0.5

# Style question
printf "\n  "
type_fast "How do you work?"
printf "\n\n"
sleep 0.2

printf "  ${DIM}1${NC}  Technical\n"
sleep 0.08
printf "  ${DIM}2${NC}  Collaborative\n"
sleep 0.08
printf "  ${DIM}3${NC}  Visionary\n"
sleep 0.08
printf "  ${DIM}4${NC}  Chaotic\n"
printf "\n"
sleep 0.4

# User picks
printf "  ${CYAN}>${NC} "
sleep 0.2
printf "${WHITE}"
type_fast "1"
printf "${NC}\n"
sleep 0.5

# Awakening
cls

# Pulse effect
for i in {1..3}; do
    cls
    printf "\n\n            ${CYAN}. * .${NC}\n\n\n"
    printf "             ${CYAN}@${NC}\n"
    printf "            ${CYAN}/|\\\\${NC}\n"
    printf "             ${CYAN}|${NC}\n"
    printf "            ${CYAN}/ \\\\${NC}\n"
    sleep 0.1
    cls
    printf "\n\n            ${WHITE}. * .${NC}\n\n\n"
    printf "             ${WHITE}@${NC}\n"
    printf "            ${WHITE}/|\\\\${NC}\n"
    printf "             ${WHITE}|${NC}\n"
    printf "            ${WHITE}/ \\\\${NC}\n"
    sleep 0.1
done

# Settle
cls
printf "\n\n            ${CYAN}. * .${NC}\n\n\n"
printf "             ${CYAN}@${NC}\n"
printf "            ${CYAN}/|\\\\${NC}\n"
printf "             ${CYAN}|${NC}\n"
printf "            ${CYAN}/ \\\\${NC}\n"
sleep 0.4

# Final words
printf "\n\n  ${WHITE}"
type_slow "orbit."
printf "${NC} "
type_fast "Let's build."
printf "\n"
sleep 0.4

printf "\n  "
type_fast "I'll watch. Learn. Stay out of your way."
printf "\n"
sleep 0.5

printf "\n  ${WHITE}"
type_slow "Go."
printf "${NC}\n\n"
sleep 2

tput cnorm
