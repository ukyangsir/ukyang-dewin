-- Copyright (C)2024 By ukyang. All Rights Reserved.
-- Author: ukyang
-- E-mail: ukyang_ma@165.com
-- Date: 2024-05-20
-- Description:


-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- leader key 为空
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

local opt = {
  noremap = true,
  silent = true,
}

-- 本地变量
local map = vim.api.nvim_set_keymap


-- 无脑必配
map("i", "jk", "<ESC>", opt)
map("v", "jk", "<ESC>", opt)
map("n", "<Space>", ":", opt)
map("n", "<C-d>", "12jzz", opt)
map("n", "<C-u>", "12kzz", opt)
map("n", "<C-e>", "7jzz", opt)
map("n", "<C-y>", "7kzz", opt)
map("n", "sp", ":sp<CR>", opt)
map("n", "sv", ":vs<CR>", opt)
map("n", "sc", "<C-w>c", opt)
map("n", "so", "<C-w>o", opt) -- close others
map("n", "U", "<C-r>", opt)
map("n", "n", "nzz", opt)
map("n", "N", "Nzz", opt)
map("n", "*", "*zz", opt)
map("n", "#", "#zz", opt)
map("n", "<Leader>;", ":noh<CR>", opt)
map("n", "H", "^", opt)
map("n", "L", "$", opt)
map("n", "k", "kzz", opt)
map("n", "j", "jzz", opt)
map("n", "<C-a>", "ggVG", opt)
map("n", "<Leader>q", ":q<CR>", opt)
map("n", "<Leader>ww", ":w<CR>", opt)
map("n", "<Leader>wq", ":wqa<CR>", opt)
map("n", "zen", ":set nu! nu? relativenumber! relativenumber?<CR>", opt)

-- alt + hjkl  窗口之间跳转
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)

-- Esc 回 Normal 模式
map("t", "<Esc>", "<C-\\><C-n>", opt)

-- nvimtree 快捷键
map("n", "<A-1>", ":NvimTreeToggle<CR>", opt)
map("n", "<A-r>", ":NvimTreeRefresh<CR>", opt)

-- floaterm 快捷键
map("n", "<Leader>t", ":FloatermToggle<CR>", opt)

-- bufferline 快捷键
map("n", "<Leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>", opt)
map("n", "<Leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>", opt)
map("n", "<Leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>", opt)
map("n", "<Leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>", opt)
map("n", "<Leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>", opt)
map("n", "<Leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>", opt)
map("n", "<Leader>7", "<Cmd>BufferLineGoToBuffer 7<CR>", opt)
map("n", "<Leader>8", "<Cmd>BufferLineGoToBuffer 8<CR>", opt)
map("n", "<Leader>9", "<Cmd>BufferLineGoToBuffer 9<CR>", opt)
map("n", "<Leader>0", "<Cmd>BufferLineGoToBuffer 0<CR>", opt)
map("n", "gb", ":BufferLinePick<CR>", opt)
map("n", "gc", ":BufferLinePickClose<CR>", opt)

-- 生成 title
map("n", "ma", ":call SetTitle()<CR>", opt)

map('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opt)
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opt)
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opt)
map('n', 'go', '<cmd>lua vim.diagnostic.open_float()<CR>', opt)
map('n', '<C-l>', '<cmd>lua vim.lsp.buf.format{ async = true }<CR>', opt)
-- map('n', '<S-F4>', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opt)
map('n', '<F2>', '<cmd>lua vim.diagnostic.goto_next()<CR>', opt)
