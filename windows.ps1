# Open terminal emulator with admin access
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

# Open terminal emulator with normal access
irm get.scoop.sh | iex

#git config
scoop install git
git config --global user.name "zachvlat"
git config --global user.email "zachariasvlatakis@gmail.com"

#add buckets
scoop bucket add extras;
scoop bucket add versions;
scoop bucket add java;
scoop bucket add games;
scoop bucket add nonportable;

#install scoop packages
scoop install flameshot firefox brave winget nodejs-lts android-studio obs-studio vlc discord steam vscode signal temurin-lts-jdk krita 7zip qbittorrent notepadplusplus stremio mailspring streamlink python libreoffice kdeconnect eartrumpet bulk-crap-uninstaller nextcloud putty heroic-games-launcher playnite fastfetch rustdesk nano sudo ani-cli mpv fzf;

#brave fix
New-Item -ItemType Junction -Path "$env:AppData/../Local/BraveSoftware/Brave-Browser/User Data" -Target "$env:USERPROFILE\scoop\persist\brave\User Data"

#install np scoops
sudo scoop install parsec-np wireguard-np;

#open with admin for this
irm christitus.com/win | iex


