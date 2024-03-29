local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  print("Installing packer close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
-- vim.cmd [[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerSync
--   augroup end
-- ]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
  git = {
    clone_timeout = 300, -- Timeout, in seconds, for git clones
  },
})

-- Install your plugins here
return packer.startup(function(use)
  use({ "wbthomason/packer.nvim" })
  use({ "nvim-lua/plenary.nvim" })
  use({ "lewis6991/impatient.nvim" })
  use({ "catppuccin/nvim", as = "catppuccin" })
  use({
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  })
  use({ "RRethy/nvim-treesitter-endwise" })
  use({ "kyazdani42/nvim-web-devicons" })
  use({ "ibhagwan/fzf-lua" })
  use({ "nvim-lualine/lualine.nvim" })
  use({ "lewis6991/gitsigns.nvim" })
  use({ "JoosepAlviste/nvim-ts-context-commentstring" })
  use({ "numToStr/Comment.nvim" })
  use({ "moll/vim-bbye" })
  use({ "windwp/nvim-autopairs" })

  -- LSP support
  use({ "williamboman/mason.nvim" })
  use({ "williamboman/mason-lspconfig.nvim" })
  use({
    "neovim/nvim-lspconfig",
    config = function()
      pcall(require, "user.lsp")
    end,
  })
  use({ "jose-elias-alvarez/null-ls.nvim" })

  -- Autocomplete
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-cmdline")
  use("hrsh7th/nvim-cmp")

  use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
