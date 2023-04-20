# Open terminal emulator with admin access
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

# Open terminal emulator with normal access
irm get.scoop.sh | iex
scoop install git

scoop bucket add extras;
scoop bucket add versions;
scoop bucket add java;
scoop bucket add games;
scoop bucket add nonportable;

scoop install brave winget sharex nodejs-lts android-studio obs-studio vlc discord steam vscode signal temurin-lts-jdk krita 7zip figma qbittorrent notepadplusplus stremio mailspring streamlink python libreoffice kdeconnect quick-picture-viewer eartrumpet bulk-crap-uninstaller nextcloud putty heroic-games-launcher playnite fastfetch nano sudo;

sudo scoop install parsec-np wireguard-np;

winget install -e --id LibreWolf.LibreWolf;
winget install -e --id valinet.ExplorerPatcher;
winget install -e --id cangzhang.champ-r;

#admin now
irm christitus.com/win | iex
