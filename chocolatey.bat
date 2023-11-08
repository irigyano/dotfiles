@echo off

echo make sure run this script as ADMINISTRATOR!!
@pause

echo Installing Chocolatey
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

echo Installing packages
choco install 7zip -y
choco install googlechrome -y
choco install vscode -y

@pause