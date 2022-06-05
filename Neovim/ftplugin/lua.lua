-- Copyright (C)2022 By ukyang. All Rights Reserved.
-- Author: ukyang
-- E-mail: ukyang_ma@163.com
-- Date: 2022-05-29
-- Description:

vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
-- 取消自动注释，当前行是 -- 注释时，按下 CR 或者 o 默认会自动注释下一行，所以这里取消了
vim.opt_local.formatoptions = vim.opt_local.formatoptions - {"c", "r", "o"}

vim.opt_local.foldmethod = "expr"

vim.opt_local.foldexpr = "nvim_treesitter#foldexpr()"

vim.o.list = false
