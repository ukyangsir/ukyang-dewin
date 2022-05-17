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
map("n", "<Space>", ":", opt)
map("n", "<C-d>", "10j", opt)
map("n", "<C-u>", "10k", opt)
map("n", "sp", ":sp<CR>", opt)
map("n", "sv", ":vs<CR>", opt)
map("n", "sc", "<C-w>c", opt)
map("n", "so", "<C-w>o", opt) -- close others

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
map("n", "<Leader>1", "<Plug>lightline#bufferline#go(1)", opt)
map("n", "<Leader>2", "<Plug>lightline#bufferline#go(2)", opt)
map("n", "<Leader>3", "<Plug>lightline#bufferline#go(3)", opt)
map("n", "<Leader>4", "<Plug>lightline#bufferline#go(4)", opt)
map("n", "<Leader>5", "<Plug>lightline#bufferline#go(5)", opt)
map("n", "<Leader>6", "<Plug>lightline#bufferline#go(6)", opt)
map("n", "<Leader>7", "<Plug>lightline#bufferline#go(7)", opt)
map("n", "<Leader>8", "<Plug>lightline#bufferline#go(8)", opt)
map("n", "<Leader>9", "<Plug>lightline#bufferline#go(9)", opt)
map("n", "<Leader>0", "<Plug>lightline#bufferline#go(0)", opt)
map("n", "<Leader>d1", "<Plug>lightline#bufferline#delete(1)", opt)
map("n", "<Leader>d2", "<Plug>lightline#bufferline#delete(2)", opt)
map("n", "<Leader>d3", "<Plug>lightline#bufferline#delete(3)", opt)
map("n", "<Leader>d4", "<Plug>lightline#bufferline#delete(4)", opt)
map("n", "<Leader>d5", "<Plug>lightline#bufferline#delete(5)", opt)
map("n", "<Leader>d6", "<Plug>lightline#bufferline#delete(6)", opt)
map("n", "<Leader>d7", "<Plug>lightline#bufferline#delete(7)", opt)
map("n", "<Leader>d8", "<Plug>lightline#bufferline#delete(8)", opt)
map("n", "<Leader>d9", "<Plug>lightline#bufferline#delete(9)", opt)
map("n", "<Leader>d0", "<Plug>lightline#bufferline#delete(0)", opt)

