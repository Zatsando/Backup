#!/bin/sh

#change hostname name
hostnamectl set-hostname ZatsLaptop;

#native packages
wireguard android-tools-adb android-tools-fastboot streamlink python3 git neofetch openjdk-17-jdk

#swap
swapon;
sudo swapoff /dev/dm-2;
rm /dev/dm-2;
dd if=/dev/zero of=/swapfile bs=1M count=16384;
chmod 600 /swapfile;
mkswap /swapfile;
swapon /swapfile;

#enable wayland
sudo nano /etc/gdm3/custom.conf;

#flatpaks
flatpak install flathub com.nextcloud.desktopclient.nextcloud -y;flatpak install flathub com.github.bluesabre.darkbar -y;flatpak install flathub org.telegram.desktop -y;flatpak install flathub com.usebottles.bottles -y;flatpak install flathub org.signal.Signal -y;flatpak install flathub com.stremio.Stremio -y;flatpak install flathub org.qbittorrent.qBittorrent -y;flatpak install flathub com.github.maoschanz.drawing -y;flatpak install flathub com.discordapp.Discord -y;flatpak install flathub com.valvesoftware.Steam -y;flatpak install flathub org.videolan.VLC -y;flatpak install flathub com.getmailspring.Mailspring -y;flatpak install flathub io.gitlab.librewolf-community -y;flatpak install flathub org.libreoffice.LibreOffice -y;flatpak install flathub net.lutris.Lutris -y;flatpak install flathub com.protonvpn.www -y;flatpak install flathub uk.org.greenend.chiark.sgtatham.putty -y;

#nodejs lts
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash;
#restart gnome-terminal
nvm install --lts;

#java
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64; 
export PATH=$PATH:$JAVA_HOME/bin;
