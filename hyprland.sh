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

    if [[ $resp == "N" ]] || [[ $resp == "n" ]]; then 
      exit 1

    elif [[ $resp == "Y" ]] || [[ $resp == "y" ]]; then

      echo -e "${YELLOW}Installing paru as AUR helper...${RC}"
      git clone https://aur.archlinux.org/paru-bin.git
      cd paru-bin/
      makepkg -si
      cd ..
      rm -rf paru-bin/
      echo -e "${GREEN}AUR helper installed.${RC}"

      echo -e "${YELLOW}Installing AUR packages...${RC}"

      # customize packages you want to install
      paru -Syu hyprland xdg-desktop-portal-hyprland xdg-desktop-portal-gtk polkit-kde-agent qt5-wayland hyprpaper hyprlock hypridle hyprshot wl-clipboard waybar mako rofi-wayland foot starship librewolf-bin nwg-look qt5ct thunar thunar-archive-plugin gvfs gvfs-gphoto2 gvfs-afc xarchiver imagemagick ristretto pavucontrol brightnessctl unzip unrar p7zip vlc htop alsa-utils dosfstools papirus-icon-theme gnome-themes-extra ttf-jetbrains-mono-nerd adobe-source-han-sans-jp-fonts noto-fonts-emoji

      echo -e "${GREEN}AUR packages installed.${RC}"
      
      cd dotconfig/ && cp -r * ~/.config/ 
      cd .. && mkdir ~/Pictures && mv Wallpapers/ ~/Pictures/
      cp -r .bashrc ~/
      echo -e "${GREEN}Enjoy Hyprland."
      exit 1

      echo -e "${RED}Please type Y for confirm or N for decling (^C to quit.)${RC}"
    fi 
done
