require("rose-pine").setup({
	disable_background=true,
	disable_float_background=true,
	disable_italics = true,
	dark_variant ="main"

})
function ColorBackground(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0,"Normal",{bg = "none"})
	vim.api.nvim_set_hl(0,"NormalFloat",{bg = "none"})
end

ColorBackground()
