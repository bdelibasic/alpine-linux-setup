#XFCE - i3 setup !!!!
apk add curl socat nmap net-tools build-base setxkbmap sudo xrandr bash termite zsh dbus dbus-x11
setup-xorg-base xfce4 xfce4-terminal lightdm dbus-x11
apk add open-vm-tools open-vm-tools-guestinfo open-vm-tools-deploypkg open-vm-tools-gtk
apk add lightdm-gtk-greeter i3wm i3status libxcb-dev i3lock xf86-video-vmware dmenu pavucontrol
apk add mesa-gl glib feh firefox-esr accountsservice openvpn

#Apps !!!!
apk add neofetch konsole thunderbird libreoffice openvpn gnome-screenshot gimp inkscape krita minetest kdenlive audacity deluge

#Add user !!!!
adduser ben
mkdir -p /home/ben/wallpaper
mkdir -p /home/ben/.config/i3

# User setup ben !!!!
cp ./ben/wallpaper/wallpaper.jpg /home/ben/wallpaper/wallpaper.jpg
cp ./ben/.config/i3/config /home/ben/.config/i3/config
cp ./ben/.profile /home/ben/.profile
mkdir -p /home/ben/.scripts
cp ./ben/login-script.sh /home/ben/.scripts/login-script.sh
chown -R ben:ben /home/ben



# Add ben to sudoers !!!!
cat ./ben/sudoers >> /etc/sudoers

# greeter background
echo "background=/home/ben/wallpaper/wallpaper.jpg" >> /etc/lightdm/lightdm-gtk-greeter.conf

# set background image in accountsservice
cp ./ben/ben /var/lib/AccountsService/users
chown root:root /var/lib/AccountsService/users/ben

# give ben write access to /opt dir
chown ben:ben /opt
