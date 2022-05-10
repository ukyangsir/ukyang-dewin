# ukyang-dewin

## 概述

对于 Linux 的折腾属实心累，老了，还是决定定制 Windows，体验其实很不错

## IdeaVim

写代码无脑选 JB 全家桶就完事了，JB 天下第一，IdeaVim 天下第一

IdeaVim 的配置文件放在家目录下即可

## Neovide

基于 Neovim 的 Neovide，我个人认为最舒服的 vim GUI，花里胡哨但又没那么花里胡哨

我不是重度 vim 用户，用 Neovide 只是用来代替 Notepad，或者用来写写脚本，装几个逼，所以没多折腾，用的是最简单的配置



Neovim 不用多说，压缩包解压运行即可，配置文件以及插件安装路径自己安排一下，路径一般是在

`C:\Users\xxx\AppData\Local\nvim`



nvim---

​	autoload：负责放 `plug.vim`，用来支持 vim-plug 安装插件

​	plugged：负责放插件

​	init.vim：负责写基本配置



Neovide 的话，我一开始是用 `chocolatey` 包管理器来装环境的，后来感觉 Win 还是手动装才有内味儿

提前装好 C/C++ 的一堆环境，再装 Rust 环境，最后用 `cargo` 编译得到 exe 文件，直接运行即可

`chocolatey` 记得在安装前改一下环境变量，在系统环境变量里加一个 `ChocolateyInstall`，变量值定义为路径，表示 `chocolatey` 的安装路径



GitHub 指路：

[Neovim](https://github.com/neovim/neovim)

[Neovide](https://github.com/neovide/neovide)

[vim-plug](https://github.com/junegunn/vim-plug)

