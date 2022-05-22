-- Copyright (C)2022 By ukyang. All Rights Reserved.
-- Author: ukyang
-- E-mail: ukyang_ma@163.com
-- Date: 2022-05-22
-- Description:


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
  -- layout_strategy = 'vertical',
  -- layout_config = { height = 0.5 },
  pickers = {
    find_files = {
      -- theme = "dropdown",
      -- theme = "cursor",
      -- theme = "ivy",
    }
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}
