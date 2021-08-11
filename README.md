# BypassWin11

![GitHub repository](https://img.shields.io/badge/haithamaouati-BypassTPMCheckSecureBoot-blue?style=flat-square&logo=github)
![GitHub version](https://img.shields.io/badge/version-1.1-yellow?style=flat-square)

Bypass [Windows 11](https://www.microsoft.com/en-us/windows/windows-11) System Requirements

Screenshots
----
![Screenshot](https://github.com/haithamaouati/BypassWin11/blob/main/screenshot.PNG?raw=true "Optional Title")

## Table of Contents

- [System Requirements](#system-requirements)
- [Bypass](#bypass)
- [Method 1](#method-1)
- [Method 2](#method-2)
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

Check for compatibility
Use the [PC Health Check](https://www.microsoft.com/en-us/windows/windows-11#pchealthcheck) app to see if your current PC meets the requirements to run Windows 11. If so, you can get a free upgrade when it rolls out.

**COMING SOON**

## Bypass

- [x] Bypass CPU Check
- [x] Bypass Storage Check
- [x] Bypass RAM Check
- [x] Bypass TPM Check
- [x] Bypass SecureBoot Check
- [x] Allow Upgrade With Unsupportred TPM or CPU

## Method 1

1. Burn Windows 11 iso file on USB drive.
2. Copy bypass file "BypassTPMCheck&SecureBoot.reg” to USB drive.
3. Open the command prompt by pressing Shift + F10 when this message "This PC can't run Windows 11" appears.
4. Open the Windows Notepad by typing "notepad" in cmd.
5. Click on the “Open” option from the “File” menu.
6. Go to the USB drive using the files explorer of the notepad.
7. Select "All Files" as the file type to show all files in USB drive.
8. Right-click on the "BypassWin11.reg" file and click on the "Merge" option, then click "Yes" and then "OK".
9. Go back to previous back and then go to the next page to proceed.<br>
The "Unsupported" screen should no longer appear and you can continue the installation.

## Method 2

1. Burn Windows 11 iso file on USB drive.
2. Copy bypass file "BypassTPMCheck&SecureBoot.bat” to USB drive.
3. Open the command prompt by pressing Shift + F10 when this message "This PC can't run Windows 11" appears.
4. Open the Windows Notepad by typing "notepad" in cmd.
5. Click on the “Open” option from the “File” menu.
6. Go to the USB drive using the files explorer of the notepad.
7. Select "All Files" as the file type to show all files in USB drive.
8. Right-click on the "BypassWin11.bat" file and click on the "Open" or "Rus as administrator" option, then press "Enter".
9. Go back to previous back and then go to the next page to proceed.<br>
The "Unsupported" screen should no longer appear and you can continue the installation.

## Disclaimer

> :warning: We are not responsible for any misuse or damage caused by this program. use this tool at your own risk!

## Author

Made with ❤️ and **bugs** by [**Haitham Aouati**](https://www.facebook.com/haithamaouati1/)
&nbsp;&middot;&nbsp;
Twitter [@haithamaouati](https://twitter.com/haithamaouati)

([Table of Contents](#table-of-contents))

## License

This repository is under [Unlicense License](https://github.com/haithamaouati/BypassTPMCheck-SecureBoot/blob/main/LICENSE).
