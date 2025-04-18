#!/bin/bash

# set script to exit on error
set -e

# variables
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
      hypr_pkgs='hyprland hyprpaper hypridle hyprlock hyprshot hyprpicker hyprpolkitagent'
      hypr2_pkgs='xdg-desktop-portal-hyprland xdg-desktop-portal-gtk waybar'
      util_pkgs='man zathura-pdf-mupdf zenity mako htop gvfs gvfs-afc p7zip unzip alsa-utils dosfstools net-tools brightnessctl wl-clipboard'
      app_pkgs='librewolf-bin foot fuzzel thunar thunar-archive-plugin xarchiver imagemagick ristretto mpv cmus neovim newsraft yt-dlp'
      theme_pkgs='nwg-look papirus-icon-theme gnome-themes-extra python-pywal16'
      fonts_pkgs='ttf-jetbrains-mono-nerd noto-fonts noto-fonts-cjk noto-fonts-emoji'

      paru -Syu $hypr_pkgs $hypr2_pkgs $util_pkgs $app_pkgs $theme_pkgs $fonts_pkgs

      echo -e "${GREEN}Packages installed.\n${RC}"
      
      cp -r .config/ .local/ .bashrc ~/
      echo -e "${BLUE}Enjoy Hyprland.${RC}"
      exit 1

      echo -e "${RED}Please type Y for confirm or N for decling (^C to quit.)${RC}"
    fi 
done
