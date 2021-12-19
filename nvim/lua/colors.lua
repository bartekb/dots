vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = false
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
-- vim.background=dark
vim.cmd[[colorscheme tokyonight]]

-- let g:nightflyItalics = 0

require'lualine'.setup {
  options = {
    theme = 'tokyonight'
  }
}
