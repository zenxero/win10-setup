# OBLIGATORY WARNING

I made this for my needs, but they will likely be different than yours. I do not know what your particular setup or needs are when configuring a Windows workstation. _DO NOT_ run this or any other Powershell script that you find on the internet without knowing what it's going to do to your system.

# win10-setup

## Table of Contents
  * [Description](#description)
  * [Usage](#usage)
  * [ShutUp10](#shutup10)
  * [Resources](#resources)

<a name="description"></a>
## Description

Powershell scripts to automatically configure Windows settings via registry edits, uninstalling appx store apps, and installing programs via `winget` or `chocolatey`.

<a name="usage"></a>
## Usage

These scripts can be downloaded an ran locally via elevated Powershell, or directly from github with the `Invoke-WebRequest` command like this:

```
Invoke-WebRequest <Raw Github URL>/win10setup.ps1 -UseBasicParsing | Invoke-Expression
```

After it's done, reboot your system.

<a name="shutup10"></a>
## ShutUp10

ShutUp10 is a really handy program that lets you toggle many different Windows settings in a convenient way.

https://www.oo-software.com/en/shutup10

You can import existing config files either from the GUI, or using the command line:

```
0OOSU10.exe ooshutup10.cfg /quiet
```

<a name="resources"></a>
## Resources

I used quite a few resources putting this together. Here's the list:

* https://github.com/lloydjatkinson/configuration

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