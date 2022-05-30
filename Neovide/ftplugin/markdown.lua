-- Copyright (C)2022 By ukyang. All Rights Reserved.
-- Author: ukyang
-- E-mail: ukyang_ma@163.com
-- Date: 2022-05-30
-- Description:

vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.tabstop = 4
vim.bo.softtabstop = 4

vim.opt_local.foldmethod = "expr"

vim.opt_local.foldexpr = "nvim_treesitter#foldexpr()"

vim.o.list = false
