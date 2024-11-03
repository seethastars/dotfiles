#!/bin/bash

set -e

RC='\e[0m'
RED='\e[31m'
YELLOW='\e[33m'
GREEN='\e[32m'
BLUE='\e[34m'

u="$USER"

while :
do
  read -p "Hi $u, do you want to install optional packages? (Y/n) " resp      # user response

    if [[ $resp == "N" ]] || [[ $resp == "n" ]]; then 
      exit 1

    elif [[ $resp == "Y" ]] || [[ $resp == "y" ]]; then

      echo -e "${YELLOW}Installing optional packages...${RC}"

      # customize packages you want to install
      paru -Syu wlogout starship swaync cmus cava

      echo -e "${GREEN}Optional packages installed.${RC}"
      exit 1
    fi 
done

