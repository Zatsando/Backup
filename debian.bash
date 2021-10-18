# my debian backup script


echo sudo apt update;

echo sudo apt upgrade;

echo sudo apt install python3 -y; 


echo sudo apt install python3-pip -y;


echo pip3 install LibreGaming;


echo pip3 install LibreGaming -U;


### PATH

echo if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi;


echo LibreGaming -g;


echo flatpak install flathub com.parsecgaming.parsec -y;

echo flatpak install flathub com.spotify.Client -y;

echo sudo apt install -y neofetch gnome-tweaks discord telegram-desktop git code vlc streamlink obs-studio steam barrier ubuntu-restricted-extras;

# 1. Install our official public software signing key
echo wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
echo cat signal-desktop-keyring.gpg | sudo tee -a /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null

# 2. Add our repository to your list of repositories
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
echo   sudo tee -a /etc/apt/sources.list.d/signal-xenial.list

# 3. Update your package database and install signal
echo sudo apt update && sudo apt install signal-desktop


echo sudo apt install apt-transport-https curl -y;sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg;echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list;sudo apt update;sudo apt install brave-browser -y;

echo sudo apt autoremove;
echo sudo apt autoclean;