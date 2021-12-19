local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- vim.fn.setenv("MACOSX_DEPLOYMENT_TARGET", "10.15")

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'nathom/filetype.nvim'

  use 'folke/tokyonight.nvim'

  use 'arkav/lualine-lsp-progress'

  -- use 'nvim-lua/lsp-status.nvim'

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- use { 'ibhagwan/fzf-lua',
  --   requires = { 'kyazdani42/nvim-web-devicons' }
  -- }

  -- use { 'camspiers/snap', rocks = {'fzy'} }

  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  use 'neovim/nvim-lspconfig'

  use { 'ms-jpq/coq_nvim', branch = 'coq' }

  use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }

  use 'ThePrimeagen/git-worktree.nvim'

  use 'p00f/nvim-ts-rainbow'

  use 'JoosepAlviste/nvim-ts-context-commentstring'

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    }
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons', opt = true
    }
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }

  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    tag = 'release' -- To use the latest release
  }

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons"
  }

  use {
    "AckslD/nvim-neoclip.lua",
    requires = {'tami5/sqlite.lua', module = 'sqlite'},
    config = function()
      require('neoclip').setup()
    end,
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
