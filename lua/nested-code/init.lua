local M = {}

function M.toggle_menu()
	print("hello world")

	local bufnr = vim.api.nvim_create_buf(false, true) -- Create a new scratch buffer

	local context = M.get_context()

	vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { context })
	vim.api.nvim_open_win(bufnr, true, {
		relative = "editor",
		width = vim.o.columns,
		height = 1,
		col = 0,
		row = 0,
		style = "minimal",
	})
end

function M.setup()
	vim.keymap.set("n", "<leader>tn", M.toggle_menu)
end

M.setup()

return M
