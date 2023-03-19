#
# Winget Package Installs
#

#Requires -RunAsAdministrator

@"

Installing Winget Packages
----------------------------------------
"@

Write-Output "Installing Apps"
$wingetapps = @(
    "Microsoft.WindowsTerminal"
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
# winget search Microsoft.WindowsTerminal --accept-source-agreements
echo Y | winget list | Out-Null

foreach ($wingetapp in $wingetapps) {
    winget install -e --accept-source-agreements --accept-package-agreements --id $wingetapp
}