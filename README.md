# .config


!([http://url/to/img.png](https://github.com/YehorStanislavskyi/.config/blob/main/screenshots/photo_2022-06-14_11-15-50.jpg))



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
### Зависимости i3 для моего конфига 

- lm-sensors
- maim 
- xclip
- polybar
- rofi
- font-font-awesome
- brightnessctrl

для дэбиан подобных
````
sudo apt isntall - y maim xclip polybar i3 rofi fonts-font-awesome lm-sensors brightnessctrl
````

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
###suspend on lid close
```
sudo vim /etc/systemd/logind.conf

[Login]
...
HandlePowerKey=hibernate
#HandleSuspendKey=suspend
#HandleHibernateKey=hibernate
HandleLidSwitch=suspend
...
HoldoffTimeoutSec=30s
IdleAction=hybrid-sleep
IdleActionSec=30min
...
```

### i3 яркость экрана 
```
sudo usermod -a -G video $LOGNAME

sudo touch /usr/share/X11/xorg.conf.d/20-intel.conf 
```
Вставить в этот файл код ниже, после перелогиниться 
```
Section "Device"
        Identifier  "card0"
        Driver      "intel"
        Option      "Backlight"  "intel_backlight"
        BusID       "PCI:0:2:0"
EndSection

```
