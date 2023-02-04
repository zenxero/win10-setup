#
# Chocolatey Package Installs
#

@"

Installing Chocolatey Packages
----------------------------------------
"@

#######################################
# Install choco programs
#######################################

$chocoapps = @(
    "curl"
    "ffmpeg"
    "libdvdcss-2"
    "wget"
)
foreach ($chocoapp in $chocoapps) {
    C:\ProgramData\chocolatey\choco.exe install $chocoapp --force -y
}