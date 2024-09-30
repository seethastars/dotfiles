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
    echo -e "${BLUE}Ok, Have a great day :)${RC}"
    exit 1

    elif [[ $resp == "Y" ]] || [[ $resp == "y" ]]; then
    echo -e "${YELLOW}Installing packages...${RC}"

      # customize packages you want to install
    sudo pacman -S hyprland qt5-wayland qt6-wayland xdg-desktop-portal-hyprland xdg-desktop-portal-gtk polkit-kde-agent hyprpaper hyprlock hypridle waybar wofi foot starship nwg-look kvantum-qt5 qt6ct thunar thunar-archive-plugin gvfs gvfs-gphoto2 gvfs-afc xarchiver imagemagick ristretto pavucontrol brightnessctl wl-clipboard unzip unrar p7zip qbittorrent gamemode grim slurp htop vlc network-manager-applet alsa-utils dosfstools ntfsprogs papirus-icon-theme gnome-themes-extra ttf-dejavu ttf-jetbrains-mono-nerd ttf-firacode-nerd adobe-source-han-sans-jp-fonts noto-fonts-emoji

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


    read -p "What theme do you want? (1)=Hyprblack (2)=Hyprmocha (3)=Hyprvertical " choice   #user choice
        if [[ $choice == 1 ]]; then

          echo -e "${YELLOW}Copying hyprfuture dotfiles into ~/.config...${RC}"
	        mkdir ~/Pictures
	        mv Wallpapers ~/Pictures
          cd hyprfuture/
          cp -r hypr/ waybar/ wofi/ foot/ fastfetch/ starship.toml ~/.config/ && mv bashrc .bashrc && cp -r .bashrc ~/
          echo -e "${GREEN}Hyprfuture dotfiles copied.${RC}"
          echo -e "${BLUE}\nEnjoy Hyprland!${RC}"
          exit 1

        elif [[ $choice == 2 ]]; then 
          echo -e "${YELLOW}Copying hyprmocha dotfiles into ~/.config...${RC}"
	        mkdir ~/Pictures && mv Wallpapers ~/Pictures
          cd hyprmocha/
          cp -r hypr/ waybar/ wofi/ foot/ fastfetch/ starship.toml ~/.config/ && mv bashrc .bashrc && cp -r .bashrc ~/
          echo -e "${GREEN}Hyprmocha dotfiles copied.${RC}"
          echo -e "${BLUE}\nEnjoy Hyprland! :3${RC}"
          exit 1

        elif [[ $choice == 3 ]]; then 
          echo -e "${YELLOW}Copying hyprvertical dotfiles into ~/.config...${RC}"
          mkdir ~/Pictures && mv Wallpapers ~/Pictures
          cd hyprvertical/
          cp -r hypr/ waybar/ wofi/ foot/ fastfetch/ starship.toml ~/.config/ && mv bashrc .bashrc && cp -r .bashrc ~/
          echo -e "${GREEN}Hyprvertical dotfiles copied.${RC}"
          echo -e "${BLUE}\nEnjoy Hyprland!${RC}"
          exit 1

        else
          echo -e "${RED}Please type 1 or 2 to choose a theme. (^C to quit.)${RC}"
        fi

      else
        echo -e "${RED}Please type Y for confirm or N for decling (^C to quit.)${RC}"
    fi 
done
