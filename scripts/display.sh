#!/bin/bash 
choices="Laptop\nDual\nExternal\nClone" 
chosen=$(echo -e $choices |rofi -dmenu -i -font "Iosevka Nerd 16" -hide-scrollbar -no-fixed-num-lines) 
case "$chosen" in
    External) xrandr --output eDP1 --off --output DP3 --auto --primary ;;
    Laptop) xrandr --output eDP1 --auto --primary --output DP3 --off ;;
    Clone) xrandr --output eDP1 --auto --output DP3 --auto --same-as  eDP1;;
    Dual) xrandr --output eDP1 --auto --output DP3 --auto --right-of eDP1 --primary ;;

esac
