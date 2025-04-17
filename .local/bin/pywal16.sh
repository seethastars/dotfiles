#!/bin/sh

# Create symlinks to apply the colorscheme
ls -sf ~/.cache/wal/colors-waybar.css ~/.config/waybar/colors.css
ls -sf ~/.cache/wal/colors-mako ~/.config/mako/config
ls -sf ~/.cache/wal/colors-foot.ini ~/.config/foot/foot.ini
ls -sf ~/.cache/wal/colors-fuzzel.ini ~/.config/fuzzel/fuzzel.ini

# Restart mako (if it's running)
if pgrep mako > /dev/null; then
    pkill mako
    setsid -f mako &
fi

# Reload waybar (if it's running)
if pgrep waybar > /dev/null; then
    killall -SIGUSR2 waybar
fi

notify-send "Wallpaper and Colorscheme changed."
