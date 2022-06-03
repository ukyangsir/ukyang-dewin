-- Copyright (C)2022 By ukyang. All Rights Reserved.
-- Author: ukyang
-- E-mail: ukyang_ma@163.com
-- Date: 2022-06-03
-- Description:

-- 关闭默认键位绑定
vim.g.multi_cursor_use_default_mapping = 0

-- 应用键位
-- 开始选择单词
vim.g.multi_cursor_start_word_key = "gm"
-- 向后选择
vim.g.multi_cursor_next_key = "<A-;>"
-- 取消当前选择
vim.g.multi_cursor_prev_key = "<A-p>"
-- 跳过选择
vim.g.multi_cursor_skip_key = "<A-b>"
-- 退出选择
vim.g.multi_cursor_quit_key = "sd"
