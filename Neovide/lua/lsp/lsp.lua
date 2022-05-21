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
local lspconfig = require("lspconfig")

local function on_attach(client, bufnr)
  -- set up buffer keymaps, etc.
end

lspconfig.sumneko_lua.setup { on_attach = on_attach }
lspconfig.vimls.setup { on_attach = on_attach }
lspconfig.bashls.setup { on_attach = on_attach }
lspconfig.pylsp.setup { on_attach = on_attach }
