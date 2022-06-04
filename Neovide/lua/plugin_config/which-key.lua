-- Copyright (C)2022 By ukyang. All Rights Reserved.
-- Author: ukyang
-- E-mail: ukyang_ma@163.com
-- Date: 2022-06-04
-- Description:

local wk = require("which-key")

wk.register(
    {
        ["g"] = {
            s = {":Switch<CR>", "ukyang--switch"},
            l = {"<cmd>lua require('toggleterm').lazygit_toggle()<CR>", "ukyang--lazygit"}
        }
    }
)

wk.register(
    {
        ["s"] = {
            p = {":sp<CR>", "ukyang--down"},
            v = {":vs<CR>", "ukyang--right"},
            c = {"<C-w>c", "ukyang--close this"},
            o = {"<C-w>o", "ukyang--close other"},
            hen = {":set nonumber norelativenumber laststatus=0<CR>", "ukyang--shen模式"},
            en = {":set nu relativenumber laststatus=2<CR>", "ukyang--sen模式"}
        }
    }
)

wk.setup(
    {
        plugins = {
            spelling = {
                -- 是否接管默认 z= 的行为
                enabled = true,
                suggestions = 20
            }
        },
        window = {
            border = "single", -- none, single, double, shadow
            position = "bottom", -- bottom, top
            margin = {0, 0, 0, 0}, -- extra window margin [top, right, bottom, left]
            padding = {0, 0, 0, 0}, -- extra window padding [top, right, bottom, left]
            winblend = 0
        },
        layout = {
            height = {min = 5, max = 5}, -- min and max height of the columns
            width = {min = 20, max = 50}, -- min and max width of the columns
            spacing = 3, -- spacing between columns
            align = "left" -- align columns left, center or right
        },
        -- ignore_missing = true
    }
)
