vim.g.mapleader = " "
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.expandtab = true
vim.o.incsearch = true
vim.o.tabstop = 2
vim.o.cursorline = true
vim.o.ignorecase = true
vim.o.hlsearch = false
vim.o.swapfile = false
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.scrolloff = 999
vim.o.errorbells = false
vim.o.shiftwidth = 2
vim.o.numberwidth = 4
vim.o.termguicolors = true
vim.o.colorcolumn = "80"
vim.o.showmode = false
vim.o.showtabline = 2
vim.o.signcolumn = "yes"
vim.o.mouse = "a"
vim.o.clipboard = "unnamedplus"
vim.o.maxmempattern = 2000000 -- get rid of E363

-- vim.api.nvim_set_keymap("n", "vs", ":vs<CR>", { noremap = true })
-- -- vim.api.nvim_set_keymap('n', 'sp', ':sp<CR>', { noremap = true })
-- vim.api.nvim_set_keymap("n", "<C-L>", "<C-W><C-L>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<C-H>", "<C-W><C-H>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<C-K>", "<C-W><C-K>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<C-J>", "<C-W><C-J>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "tn", ":tabnew<CR>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "tk", ":tabnext<CR>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "tj", ":tabprev<CR>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "to", ":tabo<CR>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<C-S>", ":%s/", { noremap = true })
-- -- vim.api.nvim_set_keymap('n', '<C-N>', ":Lexplore<CR> :vertical resize 30<CR>", { noremap = true })
-- -- vim.api.nvim_set_keymap("n", "<leader>t", ":sp<CR> :term<CR> :resize 20N<CR> i", {noremap = true, silent = true})
-- vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("v", "p", '"_c<C-r><C-o>+<Esc>', { noremap = true })
-- vim.api.nvim_set_keymap("v", "d", '"_d', { noremap = true })
-- vim.api.nvim_set_keymap("n", "d", '"_d', { noremap = true })
-- vim.api.nvim_set_keymap("v", "c", '"_c', { noremap = true })
-- vim.api.nvim_set_keymap("n", "c", '"_c', { noremap = true })
-- -- vim.api.nvim_set_keymap("n", "<Space>", "@q", { noremap = true })
-- vim.api.nvim_command "autocmd InsertEnter * norm zz"

-- format on save
vim.cmd [[
augroup FormatAutogroup
autocmd!
autocmd BufWritePost * FormatWrite
augroup END
]]
-- vim.g["netrw_banner"] = 0
-- vim.g["netrw_liststyle"] = 3
-- vim.g["netrw_winsize"] = 25
