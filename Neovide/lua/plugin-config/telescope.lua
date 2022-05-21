require('telescope').setup {
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        ["<A-;>"] = require('telescope.actions').move_selection_next,
        ["<A-p>"] = require('telescope.actions').move_selection_previous,
        ["<C-e>"] = require('telescope.actions').close,
        ["<A-s>"] = require('telescope.actions').select_horizontal,
        ["<A-v>"] = require('telescope.actions').select_vertical,
        ["<C-c>"] = false,
        ["<C-x>"] = false,
        ["<C-v>"] = false,
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}
