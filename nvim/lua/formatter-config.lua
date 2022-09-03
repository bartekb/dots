-- Utilities for creating configurations
local util = require "formatter.util"

-- Provides the Format and FormatWrite commands
require("formatter").setup {
  -- All formatter configurations are opt-in
  filetype = {
    lua = {
      require("formatter.filetypes.lua").stylua,
    },
    typescript = {
      require("formatter.filetypes.typescript").prettier,
    },
    javascript = {
      require("formatter.filetypes.javascript").prettier,
    },
    html = {
      require("formatter.filetypes.html").prettier,
    },
    css = {
      require("formatter.filetypes.css").prettier,
    },
    ruby = {
      require("formatter.filetypes.ruby").rubocop,
    },
    -- require('formatter.filetypes.html').stylua,
    -- require('formatter.filetypes.css').stylua,
    -- require('formatter.filetypes.json').stylua,

    -- ,or define your own:
    -- function()
    --   return {
    --     exe = "stylua",
    --     args = {
    --       "--search-parent-directories",
    --       "--stdin-filepath",
    --       util.escape_path(util.get_current_buffer_file_path()),
    --       "--",
    --       "-",
    --     },
    --     stdin = true,
    --   }
    -- end
  },
}
