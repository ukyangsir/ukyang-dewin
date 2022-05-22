-- Copyright (C)2022 By ukyang. All Rights Reserved.
-- Author: ukyang
-- E-mail: ukyang_ma@163.com
-- Date: 2022-05-22
-- Description:
-- lspconfig 和 nvim-lsp-installer 的配置文件


local opts = { noremap = true, silent = true }
-- vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
-- vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
-- vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
-- vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
-- nvim-lsp-installer
require("nvim-lsp-installer").setup {
  automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
  ui = {
    icons = {
      server_installed = "✓",
      server_pending = "➜",
      server_uninstalled = "✗"
    }
  },
}


-- local servers = {
--   -- 语言服务器名称：配置选项
--   sumneko_lua = require("lsp.lua"),
--   -- pyright = require("lsp.pyright"),
--   -- tsserver = require("lsp.tsserver"),
--   -- html = require("lsp.html"),
--   -- cssls = require("lsp.cssls"),
--   -- gopls = require("lsp.gopls"),
--   -- jsonls = require("lsp.jsonls"),
--   -- zeta_note = require("lsp.zeta_note"),
--   -- sqls = require("lsp.sqls"),
--   -- vuels = require("lsp.vuels")
-- }



-- lspconfig 的配置
vim.diagnostic.config(
  {
    -- 诊断的虚拟文本
    virtual_text = {
      -- 显示的前缀，可选项：'●', '▎', 'x'
      -- 默认是一个小方块，不是很好看，所以这里改了
      prefix = "●",
      -- 是否总是显示前缀？是的
      source = "always"
    },
    float = {
      -- 是否显示诊断来源？是的
      source = "always"
    },
    -- 在插入模式下是否显示诊断？不要
    update_in_insert = false
  }
)

local function on_attach(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  -- 跳转到定义（代替内置 LSP 的窗口，telescope 插件让跳转定义更方便）
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>Telescope lsp_definitions<CR>', opts)
  -- 列出光标下所有引用（代替内置 LSP 的窗口，telescope 插件让查看引用更方便）
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>Telescope lsp_references<CR>", opts)
  -- 工作区诊断（代替内置 LSP 的窗口，telescope 插件让工作区诊断更方便）
  vim.api.nvim_buf_set_keymap(bufnr, "n", "go", "<cmd>Telescope diagnostics<CR>", opts)
  -- 显示代码可用操作（代替内置 LSP 的窗口，telescope 插件让代码行为更方便）
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>ca", "<cmd>Telescope lsp_code_actions<CR>", opts)
  -- 变量重命名（代替内置 LSP 的窗口，Lspsaga 让变量重命名更美观）
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>cn", "<cmd>Lspsaga rename<CR>", opts)
  -- 查看帮助信息（代替内置 LSP 的窗口，Lspsaga 让查看帮助信息更美观）
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gh", "<cmd>Lspsaga hover_doc<CR>", opts)
end

local servers = { 'bashls', 'cssls', 'html', 'jsonls', 'pyright', 'sumneko_lua', 'tsserver', 'vimls', 'volar', 'zk' }
for _, lsp in pairs(servers) do
  require('lspconfig')[lsp].setup {
    on_attach = on_attach,
    flags = {
      -- This will be the default in neovim 0.7+
      debounce_text_changes = 150,
    }
  }
end
