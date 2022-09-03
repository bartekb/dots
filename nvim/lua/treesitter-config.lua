require'nvim-treesitter.configs'.setup {
  ensure_installed = { "ruby", "javascript", "css", "html", "yaml", "lua", "rust", "typescript", "go", "scss" },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<CR>',
      scope_incremental = '<CR>',
      node_incremental = '<TAB>',
      node_decremental = '<S-TAB>',
    },
  },
  context_commentstring = {
    enable = true
  },
  highlight = {
    additional_vim_regex_highlighting = true,
    enable = true
  },
  -- indent = {
  --   enable = true,
  --   disable = {'ruby'}
  -- },
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
  },
  endwise = {
    enable = true,
  }
}
