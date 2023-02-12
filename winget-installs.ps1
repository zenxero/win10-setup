#
# Winget Package Installs
#

@"

Installing Winget Packages
----------------------------------------
"@

Write-Output "Installing Apps"
$wingetapps = @(
    "7zip.7zip"
    "CPUID.CPU-Z"
    "CrystalDewWorld.CrystalDiskInfo"
    "Discord.Discord"
    "Git.Git"
    "Google.Chrome"
    "Microsoft.PowerToys"
    "Microsoft.VisualStudioCode"
    "Microsoft.WindowsTerminal"
    "Mozilla.Firefox"
    "RaspberryPiFoundation.RaspberryPiImager"
    "REALiX.HWiNFO"
    "TechPowerUp.GPU-Z"
    "VideoLAN.VLC"
    "Microsoft.VCRedist.2008.x86"
    "Microsoft.VCRedist.2008.x64"
    "Microsoft.VCRedist.2010.x86"
    "Microsoft.VCRedist.2010.x64"
    "Microsoft.VCRedist.2012.x86"
    "Microsoft.VCRedist.2012.x64"
    "Microsoft.VCRedist.2015+.x86"
    "Microsoft.VCRedist.2015+.x64"
)

# We need to interact with winget and accept the source agreements
# before we're able to actually use it. So, just a random search
# command will work.
winget search Microsoft.WindowsTerminal --accept-source-agreements

foreach ($wingetapp in $wingetapps) {
    winget install -e --accept-source-agreements --accept-package-agreements --id $wingetapp
}