#######################################
# Install apps with winget
#######################################

@"

Installing apps with winget
----------------------------------------
"@

Write-Output "Installing Apps"
$wingetapps = @(
    @{name = "7zip.7zip" },
    @{name = "CPUID.CPU-Z" },
    @{name = "CrystalDewWorld.CrystalDiskInfo" },
    @{name = "Discord.Discord" },
    @{name = "Git.Git" },
    @{name = "Google.Chrome" },
    @{name = "Microsoft.PowerToys" },
    @{name = "Microsoft.VisualStudioCode" },
    @{name = "Microsoft.WindowsTerminal" },
    @{name = "Mozilla.Firefox" },
    @{name = "RaspberryPiFoundation.RaspberryPiImager" },
    @{name = "REALiX.HWiNFO" },
    @{name = "TechPowerUp.GPU-Z" },
    @{name = "VideoLAN.VLC" },
    @{name = "Microsoft.VCRedist.2008.x86" },
    @{name = "Microsoft.VCRedist.2008.x64" },
    @{name = "Microsoft.VCRedist.2010.x86" },
    @{name = "Microsoft.VCRedist.2010.x64" },
    @{name = "Microsoft.VCRedist.2012.x86" },
    @{name = "Microsoft.VCRedist.2012.x64" },
    @{name = "Microsoft.VCRedist.2015+.x86" },
    @{name = "Microsoft.VCRedist.2015+.x64" }
);

# We need to interact with winget and accept the source agreements
# before we're able to actually use it. So, just a random search
# command will work.
winget search Microsoft.WindowsTerminal --accept-source-agreements

foreach ($wingetapp in $wingetapps) {
    $listApp = winget list --exact -q $wingetapp.name
    if (![String]::Join("", $listApp).Contains($wingetapp.name)) {
        Write-host "Installing: " $wingetapp.name
        winget install -e --accept-source-agreements --accept-package-agreements --id $wingetapp.name 
    }
    else {
        Write-host "Skipping: " $wingetapp.name " (already installed)"
    }
}