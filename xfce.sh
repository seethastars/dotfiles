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
  read -p "Hi $u, do you want to install XFCE dependecies? (Y/n) " resp   # user response

    if [[ $resp == "N" ]] || [[ $resp == "n" ]]; then 
    exit 1

    elif [[ $resp == "Y" ]] || [[ $resp == "y" ]]; then
    echo -e "${YELLOW}Installing packages...${RC}"

      # customize packages you want to install
      sudo pacman -S xorg xorg-xinit xfce4 xfce4-goodies xf86-video-amdgpu xarchiver unzip unrar p7zip htop mpv network-manager-applet alsa-utils gvfs dosfstools ntfsprogs papirus-icon-theme noto-fonts noto-fonts-emoji

      echo -e "${GREEN}Base packages installed.${RC}"
      echo -e "${YELLOW}Installing paru as AUR helper...${RC}"
      git clone https://aur.archlinux.org/paru-bin.git
      cd paru-bin/
      makepkg -si
      cd ..
      rm -rf paru-bin/
      echo -e "${GREEN}AUR helper installed.${RC}"

      echo -e "${YELLOW}Installing AUR packages...${RC}"
      paru -S librewolf-bin
      echo -e "${GREEN}AUR packages installed.${RC}"

      echo -e "${GREEN}All packages & dependecies installed.${RC}"
      echo -e "${BLUE}\nEnjoy XFCE.${RC}"
      exit 1

      else
      echo -e "${RED}Please type Y for confirm or N for decling (^C to quit.)${RC}"
    fi 
done
