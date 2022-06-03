-- Copyright (C)2022 By ukyang. All Rights Reserved.
-- Author: ukyang
-- E-mail: ukyang_ma@163.com
-- Date: 2022-06-03
-- Description:

local Toggleterm = require("toggleterm")

Toggleterm.setup(
    {
        --  开启的终端默认进入插入模式
        start_in_insert = false,
        -- 设置终端打开的大小
        -- size = 20,
        size = function(term)
            if term.direction == "horizontal" then
                return 6
            elseif term.direction == "vertical" then
                return vim.o.columns * 0.3
            end
        end,
        direction = 'vertical',
        -- 打开普通终端时，关闭拼写检查
        on_open = function()
            vim.cmd("setlocal nospell")
        end
    }
)

-- 新建终端
local Terminal = require("toggleterm.terminal").Terminal

local function inInsert()
    -- 删除 Esc 的映射
    vim.keybinds.dgmap("t", "<Esc>")
end

-- 新建浮动终端
local floatTerm =
    Terminal:new(
    {
        hidden = true,
        direction = "float",
        float_opts = {
            border = "curved",
            width = 90,
            height = 25,
            -- winblend = 3
        },
        on_open = function(term)
            inInsert()
            -- 浮动终端中 Esc 是退出
            vim.keybinds.bmap(term.bufnr, "t", "<Esc>", "<C-\\><C-n>:close<CR>", vim.keybinds.opts)
        end,
        on_close = function()
            -- 重新映射 Esc
            vim.keybinds.gmap("t", "<Esc>", "<C-\\><C-n>", vim.keybinds.opts)
        end
    }
)

-- 新建 lazygit 终端
local lazyGit =
    Terminal:new(
    {
        cmd = "lazygit",
        hidden = true,
        direction = "float",
        float_opts = {
            border = "curved"
        },
        on_open = function(term)
            inInsert()
            -- lazygit 中 q 是退出
            vim.keybinds.bmap(term.bufnr, "i", "q", "<cmd>close<CR>", vim.keybinds.opts)
            vim.keybinds.dgmap("t", "jk")
        end,
        on_close = function()
            -- 重新映射 Esc
            vim.keybinds.gmap("t", "<Esc>", "<C-\\><C-n>", vim.keybinds.opts)
            vim.keybinds.gmap("t", "jk", "<C-\\><C-n>", vim.keybinds.opts)
        end
    }
)

-- 定义新的方法
Toggleterm.float_toggle = function()
    floatTerm:toggle()
end

Toggleterm.lazygit_toggle = function()
    lazyGit:toggle()
end
