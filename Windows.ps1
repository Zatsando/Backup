#THIS INSTALLS THE CHOCO PACKET MANAGER
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'));

#THIS INSTALLS ALL MY APPS
choco install brave razer-synapse-3 discord 7zip.install python3 git.install barrier sharex intellijidea-ultimate jpegview nodejs-lts nvidia-geforce-now obs-studio onlyoffice parsec signal steam streamlink stremio virtualbox vlc vscode winfetch androidstudio gsudo kdeconnect-kde -y;
