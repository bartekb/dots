function string:split(_sep)
	local sep, fields = _sep or ":", {}
	local pattern = string.format("([^%s]+)", sep)
	self:gsub(pattern, function(c)
		fields[#fields + 1] = c
	end)
	return fields
end

function Make_merge()
	local line = vim.api.nvim_get_current_line()
	local myEmails = line:split(" ")
	local nLine = "User.merge_accounts(source: '" .. myEmails[1] .. "', target: '" .. myEmails[2] .. "', info: false)"

	vim.api.nvim_set_current_line(nLine)
end
vim.api.nvim_set_keymap("n", "mm", "<cmd>lua Make_merge()<CR>", { noremap = true })
