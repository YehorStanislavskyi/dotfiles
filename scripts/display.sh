#!/bin/bash


choices="Laptop\nDual\nExternal\nClone\n3Monitor" 
chosen=$(echo -e $choices |rofi -dmenu -i -font "Iosevka Nerd 16" -hide-scrollbar -no-fixed-num-lines) 
case "$chosen" in
    External) xrandr --output eDP1 --off --output HDMI1 --auto --primary && i3 restart;;
    Laptop) xrandr --output eDP1 --auto --primary --output HDMI1 --off &&  i3 restart;;
    Clone) xrandr --output eDP1 --auto --output HDMI1 --auto --same-as  eDP1 && i3 restart;;
    Dual) xrandr --output eDP1 --auto --output HDMI1 --auto --right-of eDP1 --primary && i3 restart;;
    3Monitor) xrandr --output DP1 --left-of eDP1 --auto --rotate left && xrandr --output HDMI1 --right-of eDP1 --auto && i3 restart;;
esac



