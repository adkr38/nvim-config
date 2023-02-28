local status, saga = pcall(require, "lspsaga")
if not status then
	return
end

saga.setup({
	diagnostics = {
		on_insert = false,
		on_insert_follow = true,
	},
	symbol_in_winbar = {
		separator = "  ",
	},
})
