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
  read -p "Hi $u, do you want to install STS's config? (Y/n) " resp      # user response

  if [[ $resp == "Y" ]] || [[ $resp == "y" ]]; then
    echo -e "${YELLOW}Installing packages...${RC}"
    
    # customize packages you want to install
    sudo pacman -S hyprpaper waybar nwg-look thunar thunar-archive-plugin xarchiver gvfs-afc gvfs-gphoto2 imagemagick pavucontrol brightnessctl wl-clipboard ristretto unzip unrar alsa-utils vlc qbittorrent ttf-jetbrains-mono-nerd papirus-icon-theme adobe-source-han-sans-jp-fonts

    # if you want to use "paru" instead of yay you can change the URL: https://aur.archlinux.org/paru-bin.git
    echo -e "${YELLOW}Installing yay as AUR helper...${RC}"
    git clone https://aur.archlinux.org/yay-bin.git
    cd yay-bin/
    makepkg -si
    echo -e "${GREEN}AUR helper installed.${RC}"
    
    echo -e "\n"
    echo -e "${GREEN}All packages & dependecies installed.${RC}"
    echo -e "\n"
    echo -e "${BLUE}Enjoy Hyprland :3${RC}"
    echo -e "\n"
    exit 1

  elif [[ $resp == "N" ]] || [[ $resp == "n" ]]; then 
    echo -e "${BLUE}Ok, Have a great day :)${RC}"
    exit 1

  else
    echo -e "${RED}Error: Please type Y for confirm or N for decling (^C to quit.)${RC}"
  fi 
done
