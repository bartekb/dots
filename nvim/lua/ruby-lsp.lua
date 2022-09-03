local lspconfig = require "lspconfig"

local configs = require "lspconfig.configs"
-- Check if the config is already defined (useful when reloading this file)
if not configs.ruby_lsp then
  configs.ruby_lsp = {
    default_config = {
      cmd = { "ruby-lsp" },
      filetypes = { "ruby" },
      root_dir = function(fname)
        return lspconfig.util.find_git_ancestor(fname)
      end,
      settings = {},
    },
  }
end
