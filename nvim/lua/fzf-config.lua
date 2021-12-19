require("fzf-lua").setup({
  winopts = {
    preview = { default = 'builtin' }
  },
  fzf_opts = { ['--ansi'] = false },
  files = {
    git_icons = false,
    file_icons = false,
    multiprocess = true,
  },
  live_grep = {
    multiprocess      = true,
    debug             = false,
  },
  buffers = {
    previewer         = false,
    file_icons        = false,
    color_icons       = false,
    sort_lastused     = false,
    prompt            = 'Bufery❯ ',
  },
  git = {
    files             = {
      multiprocess    = true,
      debug           = false,
    },
  }
})

vim.api.nvim_set_keymap('n', '<c-P>',
    "<cmd>lua require('fzf-lua').files()<CR>",
    { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<c-B>',
    "<cmd>lua require('fzf-lua').buffers()<CR>",
    { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<c-F>',
    "<cmd>lua require('fzf-lua').live_grep()<CR>",
    { noremap = true, silent = true })