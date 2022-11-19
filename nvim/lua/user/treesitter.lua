local status_ok, treesitter = pcall(require, "nvim-treesitter")
if not status_ok then
  return
end

local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup({
  ensure_installed = {
    "lua",
    "markdown",
    "markdown_inline",
    "bash",
    "ruby",
    "go",
    "css",
    "scss",
    "html",
    "javascript",
    "typescript",
    "yaml",
    "sql",
    "json",
    "tsx",
  },
  ignore_install = { "" },
  sync_install = false,

  endwise = {
    enable = true,
  },

  highlight = {
    enable = true,
    -- disable = { "css" },
  },
  autopairs = {
    enable = true,
  },
  indent = { enable = true, disable = { "python", "css" } },

  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
})
