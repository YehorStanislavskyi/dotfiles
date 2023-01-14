# .config
![des](https://github.com/YehorStanislavskyi/dotfiles/blob/main/screenshots/photo_2023-01-14_19-29-56.jpg/)

файлы конфигураци



## установка  i3gaps

```
sudo apt install meson dh-autoreconf libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev libxcb-shape0 libxcb-shape0-dev
```
```
git clone https://github.com/Airblader/i3 i3-gaps
cd i3-gaps
mkdir -p build && cd build
meson --prefix /usr/local
ninja
sudo ninja install
```


### vim install 

```
sudo apt install vim-gtk -y && echo -e "set number\nset cursorline\nsyntax\nset clipboard=unnamedplus" on > .vimrc
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
- [betterlockscreen](https://github.com/betterlockscreen/betterlockscreen)
- maim 
- feh
- picom
- xclip
- [polybar](https://github.com/polybar/polybar)
- [rofi](https://github.com/davatorium/rofi)
- fonts-font-awesome
- brightnessctl

для дэбиан подобных
````
sudo apt install - y picom maim xclip polybar rofi fonts-font-awesome lm-sensors brightnessctl feh ranger
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
на amd процах
```
Section "OutputClass"
	Identifier "AMDgpu"
	MatchDriver "amdgpu"
	Driver "amdgpu"
EndSection

```
