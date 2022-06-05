-- Copyright (C)2022 By ukyang. All Rights Reserved.
-- Author: ukyang
-- E-mail: ukyang_ma@163.com
-- Date: 2022-06-05
-- Description:

local lspkind = require("lspkind")
local cmp = require "cmp"

cmp.setup {
    -- 指定 snippet 引擎
    snippet = {
        expand = function(args)
            -- For `vsnip` users.
            vim.fn["vsnip#anonymous"](args.body)

            -- For `luasnip` users.
            -- require('luasnip').lsp_expand(args.body)

            -- For `ultisnips` users.
            -- vim.fn["UltiSnips#Anon"](args.body)

            -- For `snippy` users.
            -- require'snippy'.expand_snippet(args.body)
        end
    },
    -- 来源
    sources = cmp.config.sources(
        {
            -- For vsnip users.
            {name = "vsnip"},
            -- For luasnip users.
            -- { name = 'luasnip' },
            --For ultisnips users.
            -- { name = 'ultisnips' },
            -- -- For snippy users.
            -- { name = 'snippy' },
            {name = "nvim_lsp"},
            {name = "path"},
            {name = "buffer"},
            {name = "cmdline"},
            {name = "spell"},
            {name = "cmp_tabnine"}
        }
        -- },
        -- {
        --     {name = "buffer"},
        --     {name = "path"}
        -- }
    ),
    -- 快捷键
    -- mapping = cmp.mapping.preset.insert({})
    mapping = {
        -- 上一个
        ["<A-p>"] = cmp.mapping.select_prev_item(),
        -- 下一个
        ["<A-;>"] = cmp.mapping.select_next_item(),
        -- -- 出现补全
        -- ["<A-CR>"] = cmp.mapping(cmp.mapping.complete(), {"i", "c"}),
        -- 出现补全以及取消补全
        ["<A-CR>"] = cmp.mapping(
            {
                -- i = cmp.mapping.abort(),
                -- c = cmp.mapping.close()
                i = function()
                    if cmp.visible() then
                        cmp.abort()
                    else
                        cmp.complete()
                    end
                end,
                c = function()
                    if cmp.visible() then
                        cmp.close()
                    else
                        cmp.complete()
                    end
                end
            }
        ),
        -- 确认
        -- Accept currently selected item. If none selected, `select` first item.
        -- Set `select` to `false` to only confirm explicitly selected items.
        ["<CR>"] = cmp.mapping.confirm(
            {
                select = true,
                behavior = cmp.ConfirmBehavior.Replace
            }
        ),
        -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
        -- ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
        -- ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),

        -- 类似于 IDEA 的功能，如果没进入选择框，tab
        -- 会选择下一个，如果进入了选择框，tab 会确认当前选择
        ["<Tab>"] = cmp.mapping(
            function(fallback)
                if cmp.visible() then
                    local entry = cmp.get_selected_entry()
                    if not entry then
                        cmp.select_next_item({behavior = cmp.SelectBehavior.Select})
                    end
                    cmp.confirm()
                else
                    fallback()
                end
            end,
            {"i", "s", "c"}
        )
    },
    -- 使用lspkind-nvim显示类型图标
    formatting = {
        format = lspkind.cmp_format(
            {
                with_text = true, -- do not show text alongside icons
                maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
                before = function(entry, vim_item)
                    -- Source 显示提示来源
                    vim_item.menu = "[" .. string.upper(entry.source.name) .. "]"
                    return vim_item
                end
            }
        )
    },
    -- 对补全建议排序
    sorting = {
        comparators = {
            cmp.config.compare.offset,
            cmp.config.compare.exact,
            cmp.config.compare.score,
            cmp.config.compare.recently_used,
            require("cmp-under-comparator").under,
            require("cmp_tabnine.compare"),
            cmp.config.compare.kind,
            cmp.config.compare.sort_text,
            cmp.config.compare.length,
            cmp.config.compare.order
        }
    }
}

-- 命令行 / 模式提示
cmp.setup.cmdline(
    "/",
    {
        sources = {
            {name = "buffer"}
        }
    }
)

-- 命令行：模式提示
cmp.setup.cmdline(
    ":",
    {
        sources = cmp.config.sources(
            {
                {name = "path"}
            },
            {
                {name = "cmdline"}
            }
        )
    }
)
