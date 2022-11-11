Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install androidstudio -y
choco install 7zip -y
choco install discord -y
choco install eartrumpet -y
choco install firefox -y
choco install git -y
choco install adoptopenjdk12jre -y
choco install oracle17jdk -y
choco install kdeconnect-kde -y
choco install krita -y
choco install nodejs -y
choco install notepadplusplus -y
choco install figma -y
choco install obs-studio -y
choco install virtualbox -y
choco install protonvpn -y
choco install qbittorrent -y
choco install sharex -y
choco install signal -y
choco install steam-client -y
choco install stremio -y
choco install thunderbird -y
choco install vlc -y
choco install vscode -y
choco install wireguard -y
choco install streamlink -y
choco install python -y
choco install onlyoffice -y
choco install vnc-viewer -y
choco install rustdesk -y
choco install blitz.gg -y
choco install nextcloud-client -y

wget https://github.com/ModuleArt/quick-picture-viewer/releases/download/v3.1.4/QuickPictureViewer-Setup.exe -o QuickPictureViewer-Setup.exe;
wget https://github.com/valinet/ExplorerPatcher/releases/download/22621.608.51.1_e4e3c61/ep_setup.exe -o ep_setup.exe;
wget https://content-system.gog.com/open_link/download?path=/open/galaxy/client/setup_galaxy_1.2.67.58.exe -o setup_galaxy_1.2.67.58.exe;
