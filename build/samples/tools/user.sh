#!/bin/sh

IRED='\033[0;91m'
RESET_COLOR='\033[0m'

printf "$IRED$MESSAGE"
whoami
printf "$RESET_COLOR"