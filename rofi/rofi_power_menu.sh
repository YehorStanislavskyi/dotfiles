#! /bin/sh

chosen=$(printf "  Power Off\n  Restart\n  Lock" | rofi -no-fixed-num-lines -dmenu -i -theme-str )

case "$chosen" in
	"  Power Off") poweroff ;;
	"  Restart") reboot ;;
	"  Lock") i3lock-fancy ;;
	*) exit 1 ;;
esac
