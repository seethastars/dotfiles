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
  read -p "Hi $u, would you like to install Hyprland dependecies? (y/n): " resp      # user response

    if [[ $resp =~ ^[Nn]$ ]]; then
      exit 1

    elif [[ $resp =~ ^[Yy]$ ]]; then

      echo -e "${YELLOW}Installing paru as AUR helper...${RC}"

      git clone https://aur.archlinux.org/paru-bin.git
      cd paru-bin/
      makepkg -si
      cd .. 
      rm -rf paru-bin/
      echo -e "${GREEN}AUR helper installed.${RC}"

      echo -e "${YELLOW}Installing packages...${RC}"

      # define packages
      hypr_pkgs='hyprland hyprpaper hyprlock hypridle hyprshot hyprpicker waybar'
      hypr2_pkgs='xdg-desktop-portal-hyprland xdg-desktop-portal-gtk polkit-kde-agent'
      util_pkgs='htop gvfs gvfs-afc xarchiver p7zip unzip unrar alsa-utils dosfstools net-tools brightnessctl wl-clipboard'
      app_pkgs='librewolf-bin foot rofi-wayland thunar thunar-archive-plugin imagemagick ristretto mpv cmus neovim newsboat'
      theme_pkgs='nwg-look papirus-icon-theme gnome-themes-extra ttf-jetbrains-mono-nerd noto-fonts-emoji'

      paru -Syu $hypr_pkgs $hypr2_pkgs $util_pkgs $app_pkgs $theme_pkgs

      echo -e "${GREEN}Packages installed.\n${RC}"
      
      cp -r .config/ .bashrc ~/
      mkdir ~/imgs/ && cp -r wallpapers/ ~/imgs/
      echo -e "${BLUE}Enjoy Hyprland.${RC}"
      exit 1

      echo -e "${RED}Please type Y for confirm or N for decling (^C to quit.)${RC}"
    fi 
done
