-- Copyright (C)2022 By ukyang. All Rights Reserved.
-- Author: ukyang
-- E-mail: ukyang_ma@163.com
-- Date: 2022-05-29
-- Description:

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- 设置 leader 键
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

-- 默认的键位设置函数太长了，所以这里将它们重新引用一下
vim.keybinds = {
    gmap = vim.api.nvim_set_keymap,
    bmap = vim.api.nvim_buf_set_keymap,
    dgmap = vim.api.nvim_del_keymap,
    dbmap = vim.api.nvim_buf_del_keymap,
    opts = {noremap = true, silent = true}
}

-- 无脑必配
vim.keybinds.gmap("i", "jk", "<ESC>", vim.keybinds.opts)
vim.keybinds.gmap("v", "sd", "<ESC>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<Space>", ":", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-d>", "10jzz", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-u>", "10kzz", vim.keybinds.opts)
vim.keybinds.gmap("n", "sp", ":sp<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "sv", ":vs<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "sc", "<C-w>c", vim.keybinds.opts)
vim.keybinds.gmap("n", "so", "<C-w>o", vim.keybinds.opts)
vim.keybinds.gmap("n", "U", "<C-r>", vim.keybinds.opts)
vim.keybinds.gmap("n", "n", "nzz", vim.keybinds.opts)
vim.keybinds.gmap("n", "N", "Nzz", vim.keybinds.opts)
vim.keybinds.gmap("n", "*", "*zz", vim.keybinds.opts)
vim.keybinds.gmap("n", "#", "#zz", vim.keybinds.opts)
vim.keybinds.gmap("n", "<Leader>;", ":noh<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "H", "^", vim.keybinds.opts)
vim.keybinds.gmap("v", "H", "^", vim.keybinds.opts)
vim.keybinds.gmap("n", "L", "$", vim.keybinds.opts)
vim.keybinds.gmap("v", "L", "$", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-a>", "ggVG", vim.keybinds.opts)
vim.keybinds.gmap("n", "<Leader>q", ":q<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "qu", ":qa!<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<Leader>wq", ":wqa<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<Leader>ww", ":wa<CR>", vim.keybinds.opts)
vim.keybinds.gmap("i", "<A-h>", "<left>", vim.keybinds.opts)
vim.keybinds.gmap("i", "<A-j>", "<down>", vim.keybinds.opts)
vim.keybinds.gmap("i", "<A-k>", "<up>", vim.keybinds.opts)
vim.keybinds.gmap("i", "<A-l>", "<right>", vim.keybinds.opts)
vim.keybinds.gmap("n", "shen", ":set nonumber norelativenumber laststatus=0<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "zen", ":set nu relativenumber laststatus=0<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "sen", ":set nu relativenumber laststatus=2<CR>", vim.keybinds.opts)

-- alt + hjkl  窗口之间跳转
vim.keybinds.gmap("n", "<A-h>", "<C-w>h", vim.keybinds.opts)
vim.keybinds.gmap("n", "<A-j>", "<C-w>j", vim.keybinds.opts)
vim.keybinds.gmap("n", "<A-k>", "<C-w>k", vim.keybinds.opts)
vim.keybinds.gmap("n", "<A-l>", "<C-w>l", vim.keybinds.opts)
-- 修改分屏大小
vim.keybinds.gmap("n", "<A-i>", "<cmd>res +1<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<A-u>", "<cmd>res -1<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<A-y>", "<cmd>vertical resize-1<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<A-o>", "<cmd>vertical resize+1<CR>", vim.keybinds.opts)

-- nvimtree 快捷键
vim.keybinds.gmap("n", "<A-1>", ":NvimTreeToggle<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<A-r>", ":NvimTreeRefresh<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<A-m>", ":NvimTreeFindFile<CR>", vim.keybinds.opts)

-- floaterm 快捷键
vim.keybinds.gmap("n", "J", ":FloatermToggle<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "K", ":FloatermKill<CR>", vim.keybinds.opts)
-- Esc 回 Normal 模式
vim.keybinds.gmap("t", "jk", "<C-\\><C-n>", vim.keybinds.opts)

-- 生成 title
vim.keybinds.gmap("n", "ma", ":call SetTitle()<CR>", vim.keybinds.opts)

-- map('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opt)
-- map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opt)
vim.keybinds.gmap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", vim.keybinds.opts)
-- map('n', 'go', '<cmd>lua vim.diagnostic.open_float()<CR>', opt)
-- map('n', '<C-L>', '<cmd>lua vim.lsp.buf.format{ async = true }<CR>', opt)
-- -- map('n', '<S-F4>', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opt)
vim.keybinds.gmap("n", "<F2>", "<cmd>lua vim.diagnostic.goto_next()<CR>", vim.keybinds.opts)

-- terslation快捷键
vim.keybinds.gmap("n", "<C-o>", ":TerslationToggle<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-y>", ":TerslationWordTrans<CR>", vim.keybinds.opts)
vim.keybinds.gmap("v", "<C-x>", ":TerslationSelectTrans<CR>", vim.keybinds.opts)

-- telescope 快捷键
vim.keybinds.gmap("n", "<C-n>", ":Telescope find_files<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-e>", ":Telescope oldfiles<CR>", vim.keybinds.opts)
-- 查找 TODO 标签
vim.keybinds.gmap("n", "to", "<cmd>TodoTelescope<CR>", vim.keybinds.opts)

-- neoformat 快捷键
vim.keybinds.gmap("n", "<C-l>", "<cmd>Neoformat<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-x>", ":Shfmt<CR>", vim.keybinds.opts)

-- 切换拼写检查
vim.keybinds.gmap("n", "<leader>cs", "<cmd>set spell!<CR>", vim.keybinds.opts)

-- bufferline 快捷键
-- map("n", "<Leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>", opt)
-- map("n", "<Leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>", opt)
-- map("n", "<Leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>", opt)
-- map("n", "<Leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>", opt)
-- map("n", "<Leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>", opt)
-- map("n", "<Leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>", opt)
-- map("n", "<Leader>7", "<Cmd>BufferLineGoToBuffer 7<CR>", opt)
-- map("n", "<Leader>8", "<Cmd>BufferLineGoToBuffer 8<CR>", opt)
-- map("n", "<Leader>9", "<Cmd>BufferLineGoToBuffer 9<CR>", opt)
-- map("n", "<Leader>0", "<Cmd>BufferLineGoToBuffer 0<CR>", opt)
-- map("n", "gb", ":BufferLinePick<CR>", opt)
-- map("n", "gc", ":BufferLinePickClose<CR>", opt)
-- map("n", "<A-]>", ":BufferLineCycleNext<CR>", opt)
-- map("n", "<A-[>", ":BufferLineCyclePrev<CR>", opt)
