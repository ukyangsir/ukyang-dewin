-- Copyright (C)2022 By ukyang. All Rights Reserved.
-- Author: ukyang
-- E-mail: ukyang_ma@163.com
-- Date: 2022-05-31
-- Description:

-- 禁止高亮的文件类型
-- 虽然 vista_kind 和 toggleterm 还没有安装
-- 但并不影响使用，反正后续都会装上
vim.g.Illuminate_ftblacklist = {
    "NvimTree",
    "vista_kind",
    "toggleterm"
}
