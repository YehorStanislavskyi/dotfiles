# .config

файлы конфигураци

### vim install 

```
sudo apt install vim -y && echo -e "set number\nset cursorline\nsyntax" on > .vimrc
```
 ### dropbox 
 ```
 sudo apt install -y dropbox
 ```
 
 ### flatpak 
 ```
sudo add-apt-repository ppa:flatpak/stable
sudo apt update
sudo apt install flatpak
    
 ```
### Зависимости i3 

maim 
xclip
polybar
rofi
font-font-awesome



### tap to click i3 или другой x11 оконный менеджер

```
sudo mkdir -p /etc/X11/xorg.conf.d && sudo tee <<'EOF' /etc/X11/xorg.conf.d/90-touchpad.conf 1> /dev/null
Section "InputClass"
        Identifier "touchpad"
        MatchIsTouchpad "on"
        Driver "libinput"
        Option "Tapping" "on"
EndSection

EOF
```

