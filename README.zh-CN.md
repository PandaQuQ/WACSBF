# 基于Bspwm和Feh的自动更换壁纸脚本
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://git.pandaquq.tk/panda/WACSBF) ![Watchers](https://badgen.net/github/watchers/PandaQuQ/WACSBF) ![Stars](https://badgen.net/github/stars/PandaQuQ/WACSBF) ![Forks](https://badgen.net/github/forks/PandaQuQ/WACSBF)

![Issues](https://badgen.net/github/issues/PandaQuQ/WACSBF) ![Open Issues](https://badgen.net/github/open-issues/PandaQuQ/WACSBF)  ![Closed Issues](https://badgen.net/github/closed-issues/PandaQuQ/WACSBF) 

![Last Commit](https://badgen.net/github/last-commit/PandaQuQ/WACSBF) ![License](https://badgen.net/github/license/PandaQuQ/WACSBF) ![Contributors](https://badgen.net/github/contributors/PandaQuQ/WACSBF) 


[English](README.md)
 中文

依赖：[curl](https://curl.se/), [wget](https://www.gnu.org/software/wget/), [feh](https://feh.finalrewind.org/), [bspwm](https://github.com/baskerville/bspwm)

提供针对两类（风景、动漫）壁纸的六个api(五个寄了)

## 安装：
确认自己安装了且正在使用bspwm和feh

`git clone https://github.com/PandaQuQ/WACSBF.git`

`cd WACSBF`

`sh ./install.sh`

看到`finished`且无报错代表安装完成 

## 使用方法：

在shell中输入`WACSBF`（或者`wacsbf`)即可

壁纸api切换: `nano ~/.config/WACSBF/scripts/WACSBF`

按照comment修改最后一行的参数即可 

### 实现功能：

- [ ] 自动定时更换
- [x] api一键切换
- [x] 自动建立alias
- [x] 自动下载壁纸
- [x] 自动创建目录
- [ ] 自动绑定快捷键
- [x] 安装脚本
- [x] 开机自动运行
- [x] 写入bspwm config
- [ ] 卸载脚本
- [ ] 自动安装依赖
- [ ] 增加英语
- [x] 增加git钩子同步github
- [ ] 想到再说
