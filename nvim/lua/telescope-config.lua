local actions = require "telescope.actions"
local trouble = require "trouble.providers.telescope"

require("telescope").setup {
  defaults = {
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--fixed-strings",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
    },
    color_devicons = true,
    file_ignore_patterns = { "node_modules", "tmp", "vendor", "git", "dist", "yarn.lock" },
    sorting_strategy = "ascending",
    scroll_strategy = "limit",
    preview = {
      treesitter = false,
    },
    layout_config = {
      prompt_position = "top",
      height = 50,
      width = 180,
    },
    mappings = {
      i = { ["<c-t>"] = trouble.open_with_trouble },
      n = { ["<c-t>"] = trouble.open_with_trouble },
    },
  },
  pickers = {
    find_files = {
      hidden = true,
    },
    current_buffer_fuzzy_find = {
      theme = "dropdown",
    },
  },
  extensions = {
    fzf = {
      fuzzy = true, -- false will only do exact matching
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case", -- this is default
    },
  },
}

require("telescope").load_extension "git_worktree"
require("telescope").load_extension "fzf"
require("telescope").load_extension "neoclip"

vim.api.nvim_set_keymap("n", "<C-P>", "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-F>", "<cmd>lua require('telescope.builtin').live_grep()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-B>", "<cmd>lua require('telescope.builtin').buffers()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-L>", "<cmd>lua require('telescope.builtin').oldfiles()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-A>", "<cmd>lua require('telescope.builtin').git_status()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-G>", "<cmd>lua require('telescope.builtin').git_files()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-W>", "<cmd>lua require('telescope.builtin').git_commits()<CR>", { noremap = true })

vim.api.nvim_set_keymap(
  "n",
  "<C-T>",
  "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>",
  { noremap = true }
)

-- vim.api.nvim_set_keymap("n", "<C-nn>", [[<Cmd>lua require('telescope').extensions.neoclip.plus()<CR>]],
--   { noremap = true, silent = true }
-- )
vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap(
  "n",
  "<leader>xw",
  "<cmd>Trouble lsp_workspace_diagnostics<cr>",
  { silent = true, noremap = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>xd",
  "<cmd>Trouble lsp_document_diagnostics<cr>",
  { silent = true, noremap = true }
)
vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>", { silent = true, noremap = true })
