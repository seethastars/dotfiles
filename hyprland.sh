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
      paru -Syu hyprland xdg-desktop-portal-hyprland xdg-desktop-portal-gtk polkit-kde-agent hyprpaper hyprlock hypridle hyprshot wl-clipboard waybar swaync wlogout rofi-wayland foot starship librewolf-bin nwg-look thunar thunar-archive-plugin gvfs gvfs-gphoto2 gvfs-afc xarchiver imagemagick ristretto pavucontrol brightnessctl unzip unrar p7zip cmus cava htop alsa-utils dosfstools ntfsprogs papirus-icon-theme gnome-themes-extra ttf-jetbrains-mono-nerd adobe-source-han-sans-jp-fonts noto-fonts-emoji

      echo -e "${GREEN}AUR packages installed.${RC}"
      
      read -p "Do you want to copy the config files? (Y/n) "
        
        if [[ $resp == "N" ]] || [[ $resp == "n" ]]; then 
          echo -e "${BLUE}Enjoy Hyprland.${RC}"
          exit 1

        elif [[ $resp == "Y" ]] || [[ $resp == "y" ]]; then
          cd hyprstars/ && cp -r * ~/.config/ 
          cd .. && mkdir ~/Pictures && mv Wallpapers/ ~/Pictures/
          cp -r .bashrc ~/
          echo -e "${GREEN}Config files copied, Enjoy Hyprland."
          exit 1
        fi
    else
      echo -e "${RED}Please type Y for confirm or N for decling (^C to quit.)${RC}"
    fi 
done
