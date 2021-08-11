# BypassTPMCheck-SecureBoot

![GitHub repository](https://img.shields.io/badge/haithamaouati-BypassTPMCheckSecureBoot-blue?style=flat-square&logo=github)
![GitHub version](https://img.shields.io/badge/version-1.0-yellow?style=flat-square)

[Windows 11](https://www.microsoft.com/en-us/windows/windows-11) Setup - Bypass TPM 2.0 Check &amp; SecureBoot Check &amp; RAM Check.

Screenshots
----
![Screenshot](https://raw.githubusercontent.com/haithamaouati/BypassTPMCheck-SecureBoot/main/screenshot.PNG?raw=true "Optional Title")

## Table of Contents

- [System Requirements](#system-requirements)
- [Bypass](#bypass)
- [Method 1](#method-1)
- [Method 1](#method-1)
- [Gist](#gist)
- [Environments](#environments)
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

Certain features require specific hardware, see detailed [system requirements](https://www.microsoft.com/en-us/windows/windows-11-specifications).

## Bypass

- [x] TPM 2.0
- [x] SecureBoot
- [x] RAM

## Method 1

1. Burn Windows 11 iso file on USB drive.
2. Copy bypass file "BypassTPMCheck&SecureBoot.reg” to USB drive.
3. Open the command prompt by pressing Shift + F10 when this message "This PC can't run Windows 11" appears.
4. Open the Windows Notepad by typing "notepad" in cmd.
5. Click on the “Open” option from the “File” menu.
6. Go to the USB drive using the files explorer of the notepad.
7. Select "All Files" as the file type to show all files in USB drive.
8. Right-click on the "BypassTPMCheck&SecureBoot.reg" file and click on the "Merge" option, then click "Yes" and then "OK".
9. Done.

## Method 2

1. Burn Windows 11 iso file on USB drive.
2. Copy bypass file "BypassTPMCheck&SecureBoot.bat” to USB drive.
3. Open the command prompt by pressing Shift + F10 when this message "This PC can't run Windows 11" appears.
4. Open the Windows Notepad by typing "notepad" in cmd.
5. Click on the “Open” option from the “File” menu.
6. Go to the USB drive using the files explorer of the notepad.
7. Select "All Files" as the file type to show all files in USB drive.
8. Right-click on the "BypassTPMCheck&SecureBoot.bat" file and click on the "Open" or "Rus as administrator" option, then press "Enter".
9. Done.

## Gist

[https://gist.github.com/haithamaouati/6d8d7b30e66efb02b6fd0c41e8a271e8](https://gist.github.com/haithamaouati/6d8d7b30e66efb02b6fd0c41e8a271e8)

## Environments

* Windows 11

## Disclaimer

> We are not responsible for any misuse or damage caused by this program. use this tool at your own risk!

## Author

Made with ❤️ and **bugs** by [**Haitham Aouati**](https://www.facebook.com/haithamaouati1/)
&nbsp;&middot;&nbsp;
Twitter [@haithamaouati](https://twitter.com/haithamaouati)

([Table of Contents](#table-of-contents))

## License

This repository is under [Unlicense License](https://github.com/haithamaouati/BypassTPMCheck-SecureBoot/blob/main/LICENSE).
