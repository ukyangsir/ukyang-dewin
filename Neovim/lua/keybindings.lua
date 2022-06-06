-- Copyright (C)2022 By ukyang. All Rights Reserved.
-- Author: ukyang
-- E-mail: ukyang_ma@163.com
-- Date: 2022-06-04
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
vim.keybinds.gmap("c", "jk", "<C-u><ESC>", vim.keybinds.opts)
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
vim.keybinds.gmap("n", "G", "Gzb", vim.keybinds.opts)
vim.keybinds.gmap("n", "<Leader>;", ":noh<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "H", "^", vim.keybinds.opts)
vim.keybinds.gmap("v", "H", "^", vim.keybinds.opts)
vim.keybinds.gmap("n", "L", "$", vim.keybinds.opts)
vim.keybinds.gmap("v", "L", "$", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-a>", "ggVG", vim.keybinds.opts)
vim.keybinds.gmap("n", "<Leader>c", ":wq<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<Leader>d", ":q!<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<Leader>q", ":wqa<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<Leader>w", ":wa<CR>", vim.keybinds.opts)
vim.keybinds.gmap("i", "<A-h>", "<left>", vim.keybinds.opts)
vim.keybinds.gmap("i", "<A-j>", "<down>", vim.keybinds.opts)
vim.keybinds.gmap("i", "<A-k>", "<up>", vim.keybinds.opts)
vim.keybinds.gmap("i", "<A-l>", "<right>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<A-p>", "<up>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<A-;>", "<down>", vim.keybinds.opts)
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
-- vim.keybinds.gmap("n", "J", ":FloatermToggle<CR>", vim.keybinds.opts)
-- vim.keybinds.gmap("n", "K", ":FloatermKill<CR>", vim.keybinds.opts)
-- -- 各种退出
-- vim.keybinds.gmap("t", "jk", "<C-\\><C-n> <C-w>j", vim.keybinds.opts)
-- vim.keybinds.gmap("t", "sd", "<C-\\><C-n> :FloatermToggle<CR>", vim.keybinds.opts)

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
vim.keybinds.gmap("n", "<leader>sp", "<cmd>set spell!<CR>", vim.keybinds.opts)

-- gitsigns快捷键
-- vim.keybinds.gmap("n", "git", "<cmd>Gitsigns toggle_current_line_blame<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<leader>gi", "<cmd>Gitsigns preview_hunk<CR>", vim.keybinds.opts)

-- hlslens快捷键
vim.keybinds.gmap(
    "n",
    "n",
    "<Cmd>execute('normal!'.v:count1.'n')<CR><Cmd>lua require('hlslens').start()<CR>",
    vim.keybinds.opts
)
vim.keybinds.gmap(
    "n",
    "N",
    "<Cmd>execute('normal!'.v:count1.'N')<CR><Cmd>lua require('hlslens').start()<CR>",
    vim.keybinds.opts
)
vim.keybinds.gmap("n", "*", "*<Cmd>lua require('hlslens').start()<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "#", "#<Cmd>lua require('hlslens').start()<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "g*", "g*<Cmd>lua require('hlslens').start()<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "g#", "g#<Cmd>lua require('hlslens').start()<CR>", vim.keybinds.opts)

-- switch快捷键
vim.keybinds.gmap("n", "<leader>sw", ":Switch<CR>", vim.keybinds.opts)

-- hop快捷键
-- vim.keybinds.gmap("n", "<leader>hl", "<cmd>HopLine<CR>", vim.keybinds.opts)
-- vim.keybinds.gmap("v", "<leader>hl", "<cmd>HopLine<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<leader>hw", "<cmd>HopWord<CR>", vim.keybinds.opts)
vim.keybinds.gmap("v", "<leader>hw", "<cmd>HopWord<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<leader>hc", "<cmd>HopChar1<CR>", vim.keybinds.opts)
vim.keybinds.gmap("v", "<leader>hc", "<cmd>HopChar1<CR>", vim.keybinds.opts)

-- spectre快捷键
-- 全项目替换
vim.keybinds.gmap("n", "<leader>rp", "<cmd>lua require('spectre').open()<CR>", vim.keybinds.opts)
-- 只替换当前文件
vim.keybinds.gmap("n", "<leader>rf", "viw:lua require('spectre').open_file_search()<CR>", vim.keybinds.opts)
-- 全项目中搜索当前单词
vim.keybinds.gmap(
    "n",
    "<leader>rw",
    "<cmd>lua require('spectre').open_visual({select_word=true})<CR>",
    vim.keybinds.opts
)

-- toggleterm快捷键
-- 退出终端插入模式
vim.keybinds.gmap("t", "<Esc>", "<C-\\><C-n>", vim.keybinds.opts)
-- 打开普通终端
vim.keybinds.gmap("n", "J", "<cmd>exe v:count.'ToggleTerm'<CR>", vim.keybinds.opts)
-- 打开浮动终端
vim.keybinds.gmap("n", "K", "<cmd>lua require('toggleterm').float_toggle()<CR>", vim.keybinds.opts)
-- 打开lazy git 终端
vim.keybinds.gmap("n", "<leader>lg", "<cmd>lua require('toggleterm').lazygit_toggle()<CR>", vim.keybinds.opts)
-- 打开或关闭所有终端
-- vim.keybinds.gmap("n", "<leader>ta", "<cmd>ToggleTermToggleAll<CR>", vim.keybinds.opts)
-- 要需创建多个终端，可：
-- 1 <键位> leader tt
-- 2 <键位>
-- ... <键位>
-- 另外，上面我们新建了 2 个特殊终端，所以普通终端的顺序应该是从 3 开始
vim.keybinds.gmap("t", "jk", "<C-\\><C-n>", vim.keybinds.opts)
vim.keybinds.gmap("t", "<A-h>", "<C-\\><C-n><C-w>h", vim.keybinds.opts)
vim.keybinds.gmap("t", "<A-j>", "<C-\\><C-n><C-w>j", vim.keybinds.opts)
vim.keybinds.gmap("t", "<A-k>", "<C-\\><C-n><C-w>k", vim.keybinds.opts)
vim.keybinds.gmap("t", "<A-l>", "<C-\\><C-n><C-w>l", vim.keybinds.opts)
-- vim.keybinds.gmap("t", "sd", "<C-\\><C-n> :close<CR>", vim.keybinds.opts)

-- undotree快捷键
-- 按键绑定，查看 undotree
vim.keybinds.gmap("n", "<leader>un", ":UndotreeToggle<CR>", vim.keybinds.opts)

-- 显示历史弹窗记录
-- WARN:这里notify弹窗显示历史记录有bug
vim.keybinds.gmap(
    "n",
    "<leader>lf",
    -- "<cmd>lua require('telescope').extensions.notify.notify()<CR>",
    ":Telescope notify<CR>",
    vim.keybinds.opts
)
vim.keybinds.gmap("n", "<leader>ll", ":Notifications<CR>", vim.keybinds.opts)

-- copilot快捷键
vim.keybinds.gmap("i", "<C-l>", "copilot#Accept('')", vim.keybinds.opts)

-- vista快捷键，打开大纲预览
vim.keybinds.gmap("n", "<A-<F12>>", "<cmd>Vista!!<CR>", vim.keybinds.opts)

-- which-key快捷键
-- vim.keybinds.gmap("n", "<leader>", ":WhichKey <leader><CR>", vim.keybinds.opts)
-- vim.keybinds.gmap("n", "m", ":WhichKey m<CR>", vim.keybinds.opts)
-- vim.keybinds.gmap("n", "g", ":WhichKey g<CR>", vim.keybinds.opts)
-- vim.keybinds.gmap("n", "<leader>k", ":WhichKey <leader><CR>", vim.keybinds.opts)

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
