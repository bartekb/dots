require("formatter").setup({
	logging = true,
	log_level = vim.log.levels.WARN,
	filetype = {
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
		ruby = {
			require("formatter.filetypes.ruby").rubocop,
		},
		["*"] = {
			function()
				return { exe = "sed", args = { "-i", "''", "'s/[	 ]*$//'" } }
			end,
		},
	},
})
