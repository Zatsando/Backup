Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install androidstudio 7zip discord eartrumpet firefox git nvm oracle17jdk kdeconnect-kde krita nodejs notepadplusplus figma obs-studio virtualbox protonvpn qbittorrent sharex signal steam-client stremio thunderbird vlc vscode wireguard streamlink python onlyoffice vnc-viewer rustdesk blitz.gg nextcloud-client -a

wget https://github.com/ModuleArt/quick-picture-viewer/releases/download/v3.1.4/QuickPictureViewer-Setup.exe -o QuickPictureViewer-Setup.exe;
wget https://github.com/valinet/ExplorerPatcher/releases/download/22621.608.51.1_e4e3c61/ep_setup.exe -o ep_setup.exe;
wget https://content-system.gog.com/open_link/download?path=/open/galaxy/client/setup_galaxy_1.2.67.58.exe -o setup_galaxy_1.2.67.58.exe;
