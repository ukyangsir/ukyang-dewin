-- Copyright (C)2022 By ukyang. All Rights Reserved.
-- Author: ukyang
-- E-mail: ukyang_ma@163.com
-- Date: 2022-05-29
-- Description:

-- 是否将 tab 替换为 space
-- false 就是用 tab
vim.bo.expandtab = false
-- 换行或 >> << 缩进时的 space 数量
vim.bo.shiftwidth = 4
-- 一个 tab 占用几个 space
vim.bo.tabstop = 4
-- tab 和 space 的混合，和上面 2 个设置成相同即可
vim.bo.softtabstop = 4
-- 空格以及回车样式
-- vim.o.list = true
-- vim.opt.listchars:append("space:⋅")
-- vim.opt.listchars:append("eol:↴")
vim.o.list = false
