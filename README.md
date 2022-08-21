# BypassWin11

![GitHub repository](https://img.shields.io/badge/haithamaouati-BypassWin11-blue?style=flat-square&logo=github)
![GitHub version](https://img.shields.io/badge/version-1.2-yellow?style=flat-square)

Bypass [Windows 11](https://www.microsoft.com/en-us/windows/windows-11) System Requirements

## Screenshots

![Screenshot](https://github.com/haithamaouati/BypassWin11/blob/main/screenshot.PNG?raw=true "Optional Title")

## Table of Contents

- [System Requirements](#system-requirements)
- [Bypass](#bypass)
- [Method](#method)
- [Disclaimer](#disclaimer)
- [Author](#author)
- [License](#license)

## System Requirements

Hardware|Minimum system requirements
----|----
Processor|1 gigahertz (GHz) or faster with 2 or more cores on a [compatible 64-bit processor](https://docs.microsoft.com/en-us/windows-hardware/design/minimum/windows-processor-requirements) or System on a Chip (SoC)
Memory|4 GB RAM
Storage|64 GB or larger storage device
System firmware:|UEFI, Secure Boot capable
TPM:|[Trusted Platform Module (TPM)](https://docs.microsoft.com/en-us/windows/security/information-protection/tpm/trusted-platform-module-overview) version 2.0
Graphics card:|Compatible with DirectX 12 or later with WDDM 2.0 driver
Display:|High definition (720p) display that is greater than 9” diagonally, 8 bits per color channel
Internet connection|Microsoft account and internet connectivity required for setup for Windows 11 Home

## Bypass

- [x] Bypass CPU Check
- [x] Bypass Storage Check
- [x] Bypass RAM Check
- [x] Bypass TPM Check
- [x] Bypass SecureBoot Check
- [x] Allow Upgrade With Unsupported TPM or CPU

## Method

1. Burn Windows 11 iso file on USB drive using [Rufus](https://rufus.ie/en/).
2. Copy bypass file _BypassWin11.reg_ to USB drive.
3. Open the command prompt by pressing `Shift + F10` when this message _"This PC can't run Windows 11"_ appears.
4. Open the Windows Notepad by typing _notepad_ in cmd.
5. Click on the _Open_ option from the _File_ menu.
6. Go to the USB drive using the files explorer of the notepad.
7. Select _All Files_ as the file type to show all files in USB drive.
8. Right-click on the _BypassWin11.reg_ file and click on the _Merge_ option, then click _Yes_ and then _OK_.
9. Go back to previous back and then go to the next page to proceed.<br>
> The "Unsupported" screen should no longer appear and you can continue the installation.

([Table of Contents](#table-of-contents))

## Disclaimer

:warning: We are not responsible for any misuse or damage caused by this program. use this tool at your own risk!

## Author

Made with **bugs** by [**Haitham Aouati**](https://twitter.com/haithamaouati)

## License

This repository is under [Unlicense License](https://github.com/haithamaouati/BypassTPMCheck-SecureBoot/blob/main/LICENSE).
