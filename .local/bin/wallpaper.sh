#!/bin/sh

FOLDER=~/.local/wallpapers     # Wallpaper folder
SCRIPT=~/.local/bin/pywal16.sh     # script to run after colorscheme-gen

select_wallpaper() {
      zenity --file-selection $FOLDER --title="Select a Wallpaper"
}

set_wallpaper() {
    WALLPAPER=$(select_wallpaper)

    if [ -z "$WALLPAPER" ]; then
        notify-send "No wallpaper selected."
        exit 1
    fi

    # Set wallpaper
    hyprctl hyprpaper reload , "$WALLPAPER"

    # Run pywal script 
    wal -i "$WALLPAPER" -o "$SCRIPT"
}

set_wallpaper

