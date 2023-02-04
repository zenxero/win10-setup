#
# Uninstall Apps Script
#

@"

Uninstalling Unwanted Apps
----------------------------------------
"@

#######################################
# Remove Apps
#######################################

# Remove Any 3rd Party Junk Apps
# These shouldn't be installed on a clean install, but
# some of them could come pre-loaded with OEM installs.
Write-Output "Uninstalling 3rd Party Junk Apps..."
$junkapps = @(
    "2414FC7A.Viber"
    "41038Axilesoft.ACGMediaPlayer"
    "46928bounde.EclipseManager"
    "4DF9E0F8.Netflix"
    "5319275A.WhatsAppDesktop"
    "64885BlueEdge.OneCalendar"
    "7EE7776C.LinkedInforWindows"
    "828B5831.HiddenCityMysteryofShadows"
    "89006A2E.AutodeskSketchBook"
    "9E2F88E3.Twitter"
    "A278AB0D.DisneyMagicKingdoms"
    "A278AB0D.DragonManiaLegends"
    "A278AB0D.MarchofEmpires"
    "ActiproSoftwareLLC.562882FEEB491"
    "AdobeSystemsIncorporated.AdobePhotoshopExpress"
    "AmazonVideo.PrimeVideo"
    "BytedancePte.Ltd.TikTok"
    "CAF9E577.Plex"
    "D52A8D61.FarmVille2CountryEscape"
    "D5EA27B7.Duolingo-LearnLanguagesforFree"
    "DB6EA5DB.CyberLinkMediaSuiteEssentials"
    "Disney.37853FC22B2CE"
    "Drawboard.DrawboardPDF"
    "FACEBOOK.317180B0BB486"
    "Facebook.Facebook"
    "Facebook.InstagramBeta"
    "flaregamesGmbH.RoyalRevolt2"
    "GAMELOFTSA.Asphalt8Airborne"
    "KeeperSecurityInc.Keeper"
    "king.com.BubbleWitch3Saga"
    "king.com.CandyCrushSaga"
    "king.com.CandyCrushSodaSaga"
    "PandoraMediaInc.29680B314EFC2"
    "SpotifyAB.SpotifyMusic"
    "WinZipComputing.WinZipUniversal"
    "XINGAG.XING"
)
foreach ($junkapp in $junkapps) {
    Get-AppxPackage -allusers $junkapp | Remove-AppxPackage
}

# Remove Extra Microsoft Apps
Write-Output "Uninstalling Microsoft Apps..."
$msapps = @(
    "Clipchamp.Clipchamp"
    "Microsoft.BingFinance"
    "Microsoft.BingNews"
    "Microsoft.BingSports"
    "Microsoft.BingWeather"
    "Microsoft.GetHelp"
    "Microsoft.Getstarted"
    "Microsoft.Microsoft3DViewer"
    "Microsoft.MicrosoftOfficeHub"
    "Microsoft.MicrosoftSolitaireCollection"
    "Microsoft.MicrosoftStickyNotes"
    "Microsoft.MixedReality.Portal"
    "Microsoft.MSPaint"
    "Microsoft.Office.OneNote"
    "Microsoft.People"
    "Microsoft.PowerAutomateDesktop"
    "Microsoft.SkypeApp"
    "Microsoft.Todos"
    "Microsoft.Wallet"
    "microsoft.windowscommunicationsapps"
    "Microsoft.WindowsFeedbackHub"
    "Microsoft.WindowsMaps"
    "Microsoft.YourPhone"
    "Microsoft.ZuneMusic"
    "Microsoft.ZuneVideo"
    "MicrosoftCorporationII.QuickAssist"
    "MicrosoftTeams"
)
foreach ($msapp in $msapps) {
    Get-AppxPackage -allusers $msapp | Remove-AppxPackage
}

# If you want to remove the various XBOX apps,
# uncomment this section
# Remove XBOX Apps
# Write-Output "Uninstalling XBOX Apps..."
# $xboxapps = @(
#     "Microsoft.GamingApp"
#     "Microsoft.GamingServices"
#     "Microsoft.Xbox.TCUI"
#     "Microsoft.XboxApp"
#     "Microsoft.XboxDevices"
#     "Microsoft.XboxGameOverlay"
#     "Microsoft.XboxIdentityProvider"
#     "Microsoft.XboxSpeechToTextOverlay"
# )
# foreach ($xboxapp in $xboxapps) {
#     Get-AppxPackage -allusers $xboxapp | Remove-AppxPackage
# }