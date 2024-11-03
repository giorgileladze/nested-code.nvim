local M = {}

function M.toggle_menu()
	print("hello world")
end

function M.setup()
	vim.keymap.set("n", "<leader>tn", M.toggle_menu)
end

M.setup()

return M
