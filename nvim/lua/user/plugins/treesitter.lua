require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"ruby",
		"lua",
		"css",
		"html",
		"javascript",
		"bash",
		"dockerfile",
		"gitignore",
		"json",
		"sql",
		"yaml",
	},
	sync_install = false,
	auto_install = true,
	endwise = {
		enable = true,
	},
	highlight = {
		enable = true,
	},
	autopairs = {
		enable = true,
	},
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
	indent = { enable = true, disable = { "python", "css" } },
})
