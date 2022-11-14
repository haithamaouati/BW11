# BypassWin11

![followers](https://img.shields.io/github/followers/haithamaouati?color=lightgrey&style=flat-square&logo=github)
![version](https://img.shields.io/badge/version-1.4-orange?style=flat-square)
![starts](https://img.shields.io/github/stars/haithamaouati/BypassWin11?color=yellow&style=flat-square)
![forks](https://img.shields.io/github/forks/haithamaouati/BypassWin11?color=blue&style=flat-square)
![downloads](https://img.shields.io/github/downloads/haithamaouati/BypassWin11/total?color=green&style=flat-square)
![license](https://img.shields.io/github/license/haithamaouati/BypassWin11?style=flat-square)

**BypassWin11** — A super simplest, smallest tool written in pure **Batchfile** to **bypass** the minimum **Windows 11** system requirements.

___

```batchfile
      ##########  ##########
      ##########  ##########
      ##########  ##########
      ##########  ##########
      ##########  ##########

      ##########  ##########
      ##########  ##########
      ##########  ##########
      ##########  ##########
      ##########  ##########

         BypassWin11 v1.4
```

## Table of Contents

- [Requirements](#requirements)
  - [Bypass](#bypass)
  - [Changelog](#changelog)
- [Usage](#usage)
- [Environments](#environments)
- [Disclaimer](#disclaimer)
- [Author](#author)
- [License](#license)

## Requirements

Hardware | Minimum
--- | ---
Processor | 1 GHz
RAM | 4 GB
Storage | 64 GB
System firmware | UEFI, Secure Boot
TPM | 2.0

## Bypass

- [x] Bypass CPU Check
- [x] Bypass Storage Check
- [x] Bypass RAM Check
- [x] Bypass TPM Check
- [x] Bypass SecureBoot Check
- [x] Allow Upgrade With Unsupported TPM or CPU
- [ ] Bypass Internet connection and Microsoft account

## Changelog

```diff
# BypassWin11.bat
+ [added] administrator privileges.
- [removed] batchfile code comments.
```
## Usage

1. Burn [Windows 11](https://www.microsoft.com/en-us/windows/) iso :cd: on USB drive using [Rufus](https://rufus.ie/en/) tool.
2. Copy bypass file **BypassWin11.bat** to USB drive.
3. Open the Command prompt by pressing `Shift + F10` when this message _"This PC can't run Windows 11"_ appears.
4. Open the Notepad by typing notepad in CMD.
5. Click on the **Open** item from the **File** menu.
6. Go to the USB drive using the **Files Explorer** :file_folder: of the notepad.
7. Select **All Files** as the file type to show all files on USB drive.
8. Right-click on the [BypassWin11.bat](https://github.com/haithamaouati/BypassWin11/blob/main/BypassWin11.bat) file and click on the **Open** or **Rus as administrator** item, then press `Enter`.
9. Go back to previous back and then go to the next page to proceed.<br>

> **Note**:
> The "Unsupported" screen should no longer ~~appear~~ and you can continue the installation.

## Environments

* Windows
    * Windows 8
      * Windows 8.1
    * Windows 10
    * Windows 11

###### Tested on
- Windows 10

## Disclaimer

> **Warning**:
> We are not responsible for any misuse or damage caused by this program. use this tool at your own risk!

## Author

Made with :heart: by **Haitham Aouati**

![twitter](https://img.shields.io/twitter/follow/haithamaouati?style=social&logo=twitter)

## License

This repository is under [Unlicense License](https://github.com/haithamaouati/BypassTPMCheck-SecureBoot/blob/main/LICENSE).

([Table of Contents](#table-of-contents))
