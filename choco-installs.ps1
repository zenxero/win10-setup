#
# Chocolatey Package Installs
#

#Requires -RunAsAdministrator

@"

Installing Chocolatey Packages
----------------------------------------
"@

#######################################
# Install choco programs
#######################################

$chocoapps = @(
    "7zip"
    "cpu-z"
    "crystaldiskinfo"
    "curl"
    "ffmpeg"
    "firefox"
    "git"
    "googlechrome"
    "gpu-z"
    "hwinfo"
    "libdvdcss-2"
    "vlc"
    "vscode"
    "wget"
)

foreach ($chocoapp in $chocoapps) {
    C:\ProgramData\chocolatey\choco.exe install $chocoapp --force -y
}