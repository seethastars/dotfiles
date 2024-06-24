# Arch Linux & Hyprland Setup
My personal dotfiles for Arch Linux & Hyprland desktop.

**Note:** This setup will **ONLY** work if you installed Arch Linux with the **archinstall** script choosing the Hyprland option as the WM.

# Installation
**Note:** After you clone the repo, you can edit the **"setup.sh"** script to download only the packages you need :)

This script will install my personal packages & apps i use.

Clone the repo and run **./setup.sh** for installing packages & dependecies.
```
git clone https://github.com/seethastars/dotfiles.git
cd dotfiles/
chmod u+x setup.sh
./setup.sh
```

# Config Files
Once the installation is finished, copy the config files into ```~/.config```.

```
cd Hyprblack/
cp -r hypr/ waybar/ wofi/ wlogout/ kitty/ neofetch/ ~/.config
```

# GTK Theme
Download this gtk theme:

**Graphite Dark**:

https://www.gnome-look.org/p/1598493

Extract the .gz file and move the theme into ```~/.themes```.

# QT Enviroment
Add the following lines to ```/etc/enviroment```.
```
env = QT_QPA_PLATFORM,wayland
env = QT_QPA_PLATFORMTHEME,qt5ct
env = QT_WAYLAND_DISABLE_WINDOWDECORATION,1
env = QT_AUTO_SCREEN_SCALE_FACTOR,1
env = QT_STYLE_OVERRIDE,kvantum
```

# Final Step
Enjoy Hyprland :3
