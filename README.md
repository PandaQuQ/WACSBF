# A Wallpaper Auto Change Script for Bspwm and Feh
---
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://git.pandaquq.tk/panda/WACSBF) ![Watchers](https://badgen.net/github/watchers/PandaQuQ/WACSBF) ![Stars](https://badgen.net/github/stars/PandaQuQ/WACSBF) ![Forks](https://badgen.net/github/forks/PandaQuQ/WACSBF)

![Issues](https://badgen.net/github/issues/PandaQuQ/WACSBF) ![Open Issues](https://badgen.net/github/open-issues/PandaQuQ/WACSBF)  ![Closed Issues](https://badgen.net/github/closed-issues/PandaQuQ/WACSBF) 

![Last Commit](https://badgen.net/github/last-commit/PandaQuQ/WACSBF) ![License](https://badgen.net/github/license/PandaQuQ/WACSBF) ![Contributors](https://badgen.net/github/contributors/PandaQuQ/WACSBF) 

---
English [中文](https://github.com/PandaQuQ/WACSBF/blob/master/README.zh-CN.md)

___
Dependency：[curl](https://curl.se/), [wget](https://www.gnu.org/software/wget/), [feh](https://feh.finalrewind.org/), [bspwm](https://github.com/baskerville/bspwm)

4 APIs provided for 2 kinds of wallpapers(landscape,anime)

---
## Installation:
Make sure bspwm and feh are installed

`git clone https://github.com/PandaQuQ/WACSBF.git`

`cd WACSBF`

`sh ./install.sh`

Once `finished` show up without errors, WACSBF is successfully installed.

---
## Usage:

Type`WACSBF`(or `wacsbf`) in your shell

Change wallpaper apis: `nano ~/.config/WACSBF/scripts/WACSBF`

Modify the parameters in the last line accroding to the comment.

---
### Functions:

- [ ] Scheduled wallpaper auto change
- [x] Change APIs in one key
- [x] Auto establish the alias
- [x] Auto download the wallpapers
- [x] Auto make directorys
- [ ] Auto bind short-keys
- [x] Installation script
- [x] Start up running
- [x] Write in bspwm's config
- [ ] Uninstallation script
- [ ] Auto installation for dependences
- [ ] Add English support
- [x] Add a Githook from Gogs to sync the repo to github
- [ ] More functions