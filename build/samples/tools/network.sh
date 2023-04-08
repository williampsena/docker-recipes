#!/bin/sh

IYELLOW='\033[0;93m'
RESET_COLOR='\033[0m'

printf "$IYELLOW$MESSAGE"
ip addr
printf "$RESET_COLOR"