#!/bin/sh

IPURPLE='\033[0;95m' 
RESET_COLOR='\033[0m'

printf "$IPURPLE$MESSAGE"
ls -ltr /app
printf "$RESET_COLOR"