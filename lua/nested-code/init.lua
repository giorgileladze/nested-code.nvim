local ts_utils = require("nvim-treesitter.ts_utils")
local M = {}

function M.get_context()
	-- local node = ts_utils.get_node_at_cursor()
	-- if not node then
	-- 	return "No context found"
	-- end
	--
	-- -- Get the parent node to find the function or class context
	-- local parent = node:parent()
	-- local context = ""
	-- while parent do
	-- 	context = context .. parent:type() .. " -> "
	-- 	parent = parent:parent()
	-- end
	--
	return "Current Context: "
end

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
