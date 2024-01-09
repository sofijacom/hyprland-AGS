#!/bin/bash

# A bash script designed to run only once dotfiles installed

# THIS SCRIPT CAN BE DELETED ONCE SUCCESSFULLY BOOTED!! And also, edit ~/.config/hypr/configs/Execs.conf
# not necessary to do since this script is only designed to run only once as long as the marker exists

# Variables
scriptsDir=$HOME/.config/hypr/scripts
wallpaper=$HOME/.config/Pictures/wallpapers/3.jpg
kvantum_theme="Tokyo-Night"

swww="swww img"
effect="--transition-bezier .43,1.19,1,.4 --transition-fps 30 --transition-type grow --transition-pos 0.925,0.977 --transition-duration 2"

# Check if a marker file exists.
if [ ! -f $HOME/cache/.initial_startup_done ]; then


    # Initial scripts to load in order to have a proper wallpaper waybar
    swww init || swww query && $swww "$wallpaper" $effect

    # Refreshing waybar, dunst, rofi etc.
    "$scriptsDir/Refresh.sh" > /dev/null 2>&1 &

    # initiate GTK dark mode and apply icon and cursor theme
    gsettings set org.gnome.desktop.interface gtk-theme Tokyonight-Dark-BL-LB > /dev/null 2>&1 &
    gsettings set org.gnome.desktop.interface icon-theme Tokyonight-Dark > /dev/null 2>&1 &
    gsettings set org.gnome.desktop.interface cursor-theme Bibata-Modern-Ice > /dev/null 2>&1 &
    gsettings set org.gnome.desktop.interface cursor-size 6 > /dev/null 2>&1 &
    gsettings set org.gnome.desktop.interface font-name JetBrainsMono Nerd Font 10 > /dev/null 2>&1 &

    # initiate kvantum theme
    kvantummanager --set "$kvantum_theme" > /dev/null 2>&1 &

    # delete sm-link
    rm ~/.config/hypr/.current_wallpaper

    # Create a marker file to indicate that the script has been executed.
    touch $HOME/.cache/.initial_startup_done

    exit
fi
