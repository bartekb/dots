local fn = vim.fn

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

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return packer.startup(function(use)
	use({ "wbthomason/packer.nvim" })
	use({ "nvim-lua/plenary.nvim" })
	use({
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "kyazdani42/nvim-tree.lua" })
	use({ "folke/which-key.nvim" })
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})
	use({ "RRethy/nvim-treesitter-endwise" })
	use({ "JoosepAlviste/nvim-ts-context-commentstring" })
	use({ "neovim/nvim-lspconfig" })
	use({ "akinsho/toggleterm.nvim", tag = "v2.*" })
	use({ "ahmedkhalf/project.nvim" })
	use({ "gbprod/yanky.nvim" })
	use({ "catppuccin/nvim", as = "catppuccin" })
	use({ "numToStr/Comment.nvim" })
	use({ "mhartington/formatter.nvim" })
	use({ "lewis6991/gitsigns.nvim" })
	use({ "nvim-lualine/lualine.nvim" })
	use({ "lukas-reineke/indent-blankline.nvim" })

	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-buffer" })
	use({ "hrsh7th/cmp-path" })
	use({ "hrsh7th/cmp-cmdline" })
	use({ "hrsh7th/nvim-cmp" })
	use({ "L3MON4D3/LuaSnip" })
	use({ "windwp/nvim-autopairs" })

	use({ "rhysd/conflict-marker.vim" })

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
