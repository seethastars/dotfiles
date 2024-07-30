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
  read -p "Hi $u, do you want to install Hyprland dependecies? (Y/n) " resp      # user response

  if [[ $resp == "Y" ]] || [[ $resp == "y" ]]; then
    echo -e "${YELLOW}Installing packages...${RC}"
    
    # customize packages you want to install
    sudo pacman -S hyprland qt5-wayland qt6-wayland xdg-desktop-portal-hyprland xdg-desktop-portal-gtk polkit-kde-agent qt5ct kvantum-qt5 waybar wofi kitty hyprpaper hyprlock nwg-look thunar thunar-archive-plugin xarchiver gvfs-afc gvfs-gphoto2 imagemagick pavucontrol brightnessctl wl-clipboard ristretto unzip unrar p7zip grim slurp gamemode alsa-utils dosfstools ntfsprogs vlc papirus-icon-theme gnome-themes-extra ttf-jetbrains-mono-nerd adobe-source-han-sans-jp-fonts

    echo -e "${YELLOW}Installing paru as AUR helper...${RC}"
    git clone https://aur.archlinux.org/paru-bin.git
    cd paru-bin/
    makepkg -si
    rm -rf paru-bin
    echo -e "${GREEN}AUR helper installed.${RC}"

    echo -e "${YELLOW}Installing AUR packages...${RC}"
    paru -S librewolf-bin cava
    echo -e "${GREEN}AUR packages installed.${RC}"
    
    echo -e "\n"
    echo -e "${GREEN}All packages & dependecies installed.${RC}"
    echo -e "\n"
    echo -e "${BLUE}Enjoy Hyprland :3${RC}"

    exit 1

  elif [[ $resp == "N" ]] || [[ $resp == "n" ]]; then 
    echo -e "${BLUE}Ok, Have a great day :)${RC}"
    exit 1

  else
    echo -e "${RED}Please type Y for confirm or N for decling (^C to quit.)${RC}"
  fi 
done
