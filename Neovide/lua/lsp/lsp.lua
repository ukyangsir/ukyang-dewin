require("nvim-lsp-installer").setup {
  automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
      icons = {
          server_installed = "✓",
          server_pending = "➜",
          server_uninstalled = "✗"
      }
    }
}
local lspconfig = require("lspconfig")

local function on_attach(client, bufnr)
    -- set up buffer keymaps, etc.
end

lspconfig.sumneko_lua.setup { on_attach = on_attach }
lspconfig.vimls.setup { on_attach = on_attach }
lspconfig.bashls.setup { on_attach = on_attach }
