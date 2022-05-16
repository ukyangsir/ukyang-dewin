# ukyang-vimrelated-Windows

## 概述

首先明确一点，本人主业是 Java 程序员，多年使用并且已经习惯于 vim 编码，所以总的来说，折腾都是围绕 vim 展开的



对于 Linux 的折腾属实心累，现在人也老了，还是决定以 Windows 为主，配合 `WSL2 + Windows Terminal`作为最终生产力组合，体验其实很不错

主要编码环境还是 JB 全家桶，JB 天下第一，不用多说，IdeaVim 调教好了配合 JB 本身的快捷键系统，同样能爽到飞起



至于占大头的 `Neovide` 的配置，起因是我想找个替代 notepad 记事本的工具，核心要求是足够轻量（VSCode 排除），额外要求颜值高一些的、更符合程序员审美的（再次排除一堆），特殊要求是不用额外记快捷键（日常快捷键用的太多了，担心用混），所以兜兜转转最后回到了 `Neovim` 上，得，那就配置吧



> 注意，本仓库没有详细教程，不过各个模块相互独立，可按需白嫖



仓库目前已经包括的内容——

- Neovide（Neovim）
- IdeaVim

> 再次注意，`本仓库没有详细教程`，太小白的同学还是得自己折腾，大佬也不会稀罕我的配置，所以适合懂一些但又不是很懂的朋友来白嫖，或者对比优化自己的配置

## Neovide

基于 Neovim 的 Neovide，我个人认为最舒服的 vim GUI，花里胡哨但又没那么花里胡哨

我不是重度 vim 用户，用 Neovide 只是用来代替 Notepad，或者用来写写脚本，装几个逼，所以没多折腾，用的是最简单的配置



NeoVim 的配置，主要有以下三种方式，我使用的是混合模式，init.vim 文件是主入口文件（或者说是主配置文件、主入口文件）

1. 纯经典配置（init.vim + vim-plug）
2. 混合配置（lua + init.vim + vim-plug）
3. 纯 lua 配置（lua + packer-nvim）



我不用纯 lua 的原因就是，没有 lua  语言的基础，也不想太折腾，累，折腾好了也不能拿钱



Neovim 不用多说，压缩包解压运行即可，配置文件以及插件安装路径自己安排一下，路径一般是在

`~\AppData\Local\nvim`

这个可以用 `:help config` 自己看



- autoload：负责放 `plug.vim`，用来支持 vim-plug 安装插件

- plugged：负责放插件

- init.vim：负责写基本配置



Neovide 的话，我一开始是用 `chocolatey` 包管理器来装环境的，后来感觉 Win 还是手动装才有内味儿

提前装好 C/C++ 的一堆环境，再装 Rust 环境，最后用 `cargo` 编译得到 exe 文件，直接运行即可

`chocolatey` 记得在安装前改一下环境变量，在系统环境变量里加一个 `ChocolateyInstall`，变量值定义为路径，表示 `chocolatey` 的安装路径



GitHub 指路：

[Neovim](https://github.com/neovim/neovim)

[Neovide](https://github.com/neovide/neovide)

[vim-plug](https://github.com/junegunn/vim-plug)

## NeoVim 插件

这里专门把 NeoVim 插件单独拿出来，我觉得是很必要的

1. [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)

   树型文件结构，善用 a，o，hjkl，回车 

2. floatwindow

3. itchyny/lightline.vim

4. mengelbrecht/lightline-bufferline

5. [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)

   内置lsp插件，安装即可，从 doc/server_configurations.md 中查找自己需要的语言 lsp 配置

6. [williamboman/nvim-lsp-installer](https://github.com/williamboman/nvim-lsp-installer)

   自动安装lsp插件，:LspInfo，:LspInstall，:LspUninstall

   插件6需要配合插件5一起使用，同时需要准备 lua 文件

7. [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)

   代码补全插件



主题：

1. morhetz/gruvbox
2. glepnir/zephyr-nvim



Coc.nvim + 内置 lsp + lua 来自定义编程环境，即配置类似 IDE 的环境

Coc.nvim 同样可以辅助编写 bash/shell 脚本

## Init.vim

- Plugin packages

  插件管理

- Pre settings

  前置设置

- General settings

  一般设置

- Colorscheme settings

  主题设置

- Plugin settings

  插件设置

- Autocmd/Function settings

  自动执行命令或函数设置

- External Lua settings

  外部 lua 设置

- External settings

  外部一般设置

- THE END.



## IdeaVim

写代码无脑选 JB 全家桶就完事了，JB 天下第一，IdeaVim 天下第一

IdeaVim 的配置文件放在家目录下即可