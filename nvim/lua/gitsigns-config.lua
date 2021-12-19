vim.cmd([[:highlight CustomSignsAdd guifg=#a4cf69]])
vim.cmd([[:highlight CustomSignsChange guifg=#63c1e6]])
vim.cmd([[:highlight CustomSignsDelete guifg=#d74f56]])   

require('gitsigns').setup {
  signs = {
    add = {hl = "DiffAdd", text = "▌", numhl = "GitSignsAddNr"},
    change = {hl = "DiffChange", text = "▌", numhl = "GitSignsChangeNr"},
    delete = {hl = "DiffDelete", text = "_", numhl = "GitSignsDeleteNr"},
    topdelete = {hl = "DiffDelete", text = "‾", numhl = "GitSignsDeleteNr"},
    changedelete = {hl = "DiffChange", text = "~", numhl = "GitSignsChangeNr"}
  },
  current_line_blame = true
}