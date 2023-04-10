![watchers](https://custom-icon-badges.demolab.com/github/watchers/haithamaouati/BW11?logo=eye)
![stars](https://custom-icon-badges.demolab.com/github/stars/haithamaouati/BW11?logo=star)
![forks](https://custom-icon-badges.demolab.com/github/forks/haithamaouati/BW11?logo=repo-forked)
![license](https://custom-icon-badges.demolab.com/github/license/haithamaouati/BW11?logo=law)

```
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
```

___

# BW11
**BW11** — Bypass Windows 11 System Requirements.

## Table of Contents
- [Bypass](#bypass)
- [Usage](#usage)
- [Disclaimer](#disclaimer)
- [License](#license)

([Table of Contents](#table-of-contents))

## Bypass
Hardware | Minimum
--- | ---
Processor | 1 GHz
RAM | 4 GB
Storage | 64 GB
System firmware | UEFI, Secure Boot
TPM | 2.0
Internet connection| Microsoft account

###### Requirements
- [x] Bypass CPU Check
- [x] Bypass Storage Check
- [x] Bypass RAM Check
- [x] Bypass TPM Check
- [x] Bypass SecureBoot Check
- [x] Allow Upgrade With Unsupported TPM or CPU
- [ ] Bypass Internet connection and Microsoft account

## Usage
###### First Method
1. Burn the [Windows 11]() .iso :cd: on USB flash drive using [Rufus]() tool.
2. Copy & paste `BW11.bat` to the USB flash drive.
3. During the installation phase of Windows 11 and when this message _“This PC can't run Windows 11”_ appears, run the CMD by pressing `Shift + F10` keys.
4. Run the Notepad app by typing `notepad` in CMD.
5. Click on `Open` from the `File` option in the toolbar.
6. Go to the USB flash drive using the Files Explorer of the Notepad.
7. Select All Files as the file type to show all files on USB flash drive.
8. Right-click on `BW11.bat` file and click on `Run as administrator` from ContextMenu.
9. Go back to the previous stage.

> **Note**:
> The "Unsupported" screen should no longer ~~appear~~ and you can continue the installation.

###### Second Method
Steps **1** through **7** are the same as the [First Method](#first-method), Step 8 is different as `BW11.reg` is used instead of `BW11.bat`

8. Right-click on the `BW11.reg` file and click on the `Merge` from ContextMenu, then `Yes` button.
9. Go back to the previous stage.

## Disclaimer
> **Warning**:
> We are not responsible for any misuse or damage caused by this program. use this tool at your own risk!

## License
This repository is under [Unlicense License](https://github.com/haithamaouati/BW11/blob/main/LICENSE).
