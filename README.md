# BypassWin11

![GitHub repository](https://img.shields.io/badge/haithamaouati-BypassWin11-blue?style=flat-square&logo=github)
![GitHub version](https://img.shields.io/badge/version-1.3-yellow?style=flat-square)

<strong>BypassWin11</strong> — Bypass [Windows 11](https://www.microsoft.com/en-us/windows/windows-11) System Requirements

A simple <strong>Batchfile</strong> that bypass <strong>Windows 11</strong> system requirements.

## Screenshots

![Screenshot](https://github.com/haithamaouati/BypassWin11/blob/main/screenshot.PNG?raw=true "Optional Title")

## Table of Contents

- [Bypass](#bypass)
- [Method](#method)
- [Changelog](#changelog)
- [Disclaimer](#disclaimer)
- [Author](#author)
- [License](#license)

## Bypass

- [x] Bypass CPU Check
- [x] Bypass Storage Check
- [x] Bypass RAM Check
- [x] Bypass TPM Check
- [x] Bypass SecureBoot Check
- [x] Allow Upgrade With Unsupported TPM or CPU

## Method

1. Burn [Windows 11](https://www.microsoft.com/en-us/windows/) iso file on USB drive using [Rufus](https://rufus.ie/en/).
2. Copy bypass file [BypassWin11.bat](https://github.com/haithamaouati/BypassWin11/blob/main/BypassWin11.bat) to USB drive.
3. Open the command prompt by pressing `Shift + F10` when this message _"This PC can't run Windows 11"_ appears.
4. Open the Windows Notepad by typing `notepad` in cmd.
5. Click on the **Open** item from the **File** menu.
6. Go to the USB drive using the files explorer of the notepad.
7. Select **All Files** as the file type to show all files on USB drive.
8. Right-click on the [BypassWin11.bat](https://github.com/haithamaouati/BypassWin11/blob/main/BypassWin11.bat) file and click on the **Open** or **Rus as administrator** item, then press `Enter`.
9. Go back to previous back and then go to the next page to proceed.<br>
> The "Unsupported" screen should no longer appear and you can continue the installation.

## Changelog

```diff
+ [added] system information item.
+ [fixed] bypass.reg file.
+ [added] appraiserres.dll file.
- [removed] code comments.
```

## Disclaimer

:warning: We are not responsible for any misuse or damage caused by this program. use this tool at your own risk!

## Author

Made with **bugs** by [**Haitham Aouati**](https://twitter.com/haithamaouati)

([Table of Contents](#table-of-contents))

## License

This repository is under [Unlicense License](https://github.com/haithamaouati/BypassTPMCheck-SecureBoot/blob/main/LICENSE).
