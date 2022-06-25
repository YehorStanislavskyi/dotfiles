#!/bin/bash 
choices="laptop\ndual\nexternal\nclone" 
chosen=$(echo -e $choices |rofi -dmenu -i)  
case "$chosen" in
    external) xrandr --output eDP1 --off --output DP3 --auto --primary ;;
    laptop) xrandr --output eDP1 --auto --primary --output DP3 --off ;;
    clone) xrandr --output eDP1 --auto --output DP3 --auto --same-as  eDP1;;
    dual) xrandr --output eDP1 --auto --output DP3 --auto --right-of eDP1 --primary ;;

esac
