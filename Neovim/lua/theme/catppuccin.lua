-- Copyright (C)2022 By ukyang. All Rights Reserved.
-- Author: ukyang
-- E-mail: ukyang_ma@163.com
-- Date: 2022-05-29
-- Description:

require("catppuccin").setup(
    {
        -- 是否透明背景
        transparent_background = vim.g.background_transparency,
        -- 是否使用终端背景色
        term_colors = false,
        -- 代码样式
        styles = {
            comments = "italic",
            conditionals = "italic",
            loops = "NONE",
            functions = "NONE",
            keywords = "NONE",
            strings = "NONE",
            variables = "NONE",
            numbers = "NONE",
            booleans = "NONE",
            properties = "NONE",
            types = "NONE",
            operators = "NONE"
        },
        -- 为不同的插件统一样式风格
        -- 尽管这里有一些插件还没有安装，但是先将它们设置为 true 并不影响
        integrations = {
            treesitter = true,
            native_lsp = {
                enabled = true,
                virtual_text = {
                    errors = "italic",
                    hints = "italic",
                    warnings = "italic",
                    information = "italic"
                },
                underlines = {
                    errors = "underline",
                    hints = "underline",
                    warnings = "underline",
                    information = "underline"
                }
            },
            lsp_trouble = false,
            cmp = true,
            -- 后面会手动配置
            lsp_saga = false,
            gitgutter = false,
            gitsigns = true,
            telescope = true,
            nvimtree = {
                enabled = true,
                show_root = true,
                -- 是否透明背景
                transparent_panel = vim.g.background_transparency
            },
            neotree = {
                enabled = false,
                show_root = false,
                transparent_panel = false
            },
            which_key = true,
            indent_blankline = {
                enabled = true,
                colored_indent_levels = true
            },
            dashboard = true,
            neogit = false,
            vim_sneak = false,
            fern = false,
            barbar = false,
            bufferline = true,
            markdown = true,
            lightspeed = false,
            ts_rainbow = true,
            hop = true,
            notify = true,
            telekasten = true,
            symbols_outline = true
        }
    }
)
