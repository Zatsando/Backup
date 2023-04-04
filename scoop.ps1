Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
scoop install git

scoop bucket add extras;
scoop bucket add versions;
scoop bucket add java;
scoop bucket add games;

scoop install winget sharex nodejs-lts android-studio obs-studio vlc discord steam vscode signal temurin17-jdk temurin17-jre krita 7zip figma qbittorrent notepadplusplus stremio mailspring streamlink python onlyoffice-desktopeditors kdeconnect quick-picture-viewer vncviewer eartrumpet bulk-crap-uninstaller rustdesk nextcloud

winget install -e --id Brave.Brave;
winget install -e --id LibreWolf.LibreWolf;
winget install -e --id valinet.ExplorerPatcher;
winget install -e --id cangzhang.champ-r;

# Disable feature updates
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "DeferFeatureUpdates" -Value 1 -Type DWORD
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "DeferFeatureUpdatesPeriodInDays" -Value 365 -Type DWORD

# Enable security updates
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "DeferQualityUpdates" -Value 0 -Type DWORD
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "TargetReleaseVersion" -Value "1" -Type DWORD

# Disable telemetry
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -Value 0 -Type DWORD
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat" -Name "AITEnable" -Value 0 -Type DWORD

# Enable NumLock on startup
$regPath = "HKU\.DEFAULT\Control Panel\Keyboard"
Set-ItemProperty -Path $regPath -Name "InitialKeyboardIndicators" -Value "2" -Type String
