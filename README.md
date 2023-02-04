# OBLIGATORY WARNING

I made this for my needs, but they will likely be different than yours. I do not know what your particular setup or needs are when configuring a Windows workstation. _DO NOT_ run this or any other Powershell script that you find on the internet without knowing what it's going to do to your system.

# win10-setup

## Table of Contents
  * [Description](#description)
  * [Usage](#usage)
  * [Sequence of events](#sequenceofevents)
  * [Resources](#resources)

<a name="description"></a>
## Description

This is a "Right-Click -> Run As Admin" style batch file that calls four other Powershell scripts to automate changing Windows 10 settings, removing unwanted Microsoft Store apps, install some apps with `winget`, install some `chocolatey` packages, and import a _ShutUp10_ config file.

Unlike other "debloating" scripts that I found, I did not want to remove the various security features of Windows like Smartscreen, Windows Defender, etc. I only wanted to turn off as much telemetry as I could, uninstall the Microsoft Store apps that I don't want, as well as change some system and UI settings in a programmatic way.

<a name="usage"></a>
## Usage
The only external dependency to use this is the O&O ShutUp10 executable. This should to be downloaded from their site and placed in the same directory as the rest of these files when you run the batch file. I didn't want to include or re-distribute the EXE in this repo since it's a proprietary third-party program.

You can download it from their site:
https://www.oo-software.com/en/shutup10

After that, you should check out and edit the following files as needed:
  * [win10setup.ps1](win10setup.ps1)
  * [uninstall-apps.ps1](uninstall-apps.ps1)
  * [winget-installs.ps1](winget-installs.ps1)
  * [choco-installs.ps1](choco-installs.ps1)

Once you're ready and have ShutUp10 in the directory, just right-click the [win10setup.bat](win10setup.bat) file and click "Run as administrator".

After it's done, reboot your system.

<a name="sequenceofevents"></a>
## Sequence of events

When you right-click and run the [win10setup.bat](win10setup.bat) file as administrator, the following things will happen:

1. The [win10setup.ps1](win10setup.ps1) Powershell script that changes various registry entries to disable telemetry and alter system settings will be executed.

2. The [uninstall-apps.ps1](uninstall-apps.ps1) Powershell script that will uninstall first-party and third-party Microsoft Store apps that I don't want will be executed.

3. The [winget-installs.ps1](winget-installs.ps1) Powershell script that installs various apps with the `winget` tool will be executed.

4. The _Chocolatey_ package manager will be installed.

5. The [choco-installs.ps1](choco-installs.ps1) Powershell script that installs various Chocolatey programs will be executed.

6. The ShutUp10 executable will be called and it will import the settings from the [ooshutup10.cfg](ooshutup10.cfg) file into the program.

7. The script will display a "Please Reboot Your System Now" message and wait for user input to exit.

<a name="resources"></a>
## Resources

I used quite a few resources putting this together. Here's the list:

* https://chris-ayers.com/2021/08/01/scripting-winget/

* https://gist.github.com/dougwaldron/d510f2d67a922da169aca1aeff7e4c4d#file-installsoftware-ps1

* https://github.com/ChrisTitusTech/winutil/blob/main/winutil.ps1

* https://github.com/alirobe/Reclaim-Windows10

* https://github.com/Disassembler0/Win10-Initial-Setup-Script/blob/master/Win10.psm1

* https://gist.github.com/alirobe/7f3b34ad89a159e6daa1

* https://github.com/W4RH4WK/Debloat-Windows-10/blob/master/scripts/fix-privacy-settings.ps1

* https://gist.github.com/NickCraver/7ebf9efbfd0c3eab72e9

* https://gitlab.com/andrewkidd/winInit/-/blob/master/tweaks/Remove-SubjectiveBloat.ps1

* https://www.tenforums.com/performance-maintenance/124376-settings-using-powershell-cmd-2.html#post1553969

* https://winaero.com/disable-aero-shake-in-windows-10-windows-8-and-windows-7/

* https://www.oo-software.com/en/shutup10