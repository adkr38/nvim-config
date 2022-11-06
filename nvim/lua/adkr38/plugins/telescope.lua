-- import telescope plugin safely
local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

-- import telescope actions safely
local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
	return
end

-- configure telescope
telescope.setup({
	--add media display
	extensions = {
		media_files = {
			filetypes = { "png", "webp", "jpg", "jpeg", "svg" },
			find_cmd = "rg",
		},
	},
	-- configure custom mappings
	defaults = {
		layout_config = {
			horizontal = { preview_cutoff = 0 },
		},
		mappings = {
			i = {
				["<C-j>"] = actions.move_selection_previous, -- move to prev result
				["<C-k>"] = actions.move_selection_next, -- move to next result
				["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
			},
		},
	},
})

telescope.load_extension("fzf")
telescope.load_extension("media_files")
