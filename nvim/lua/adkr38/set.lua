vim.opt.guicursor = ""

-- line numbers
vim.opt.relativenumber = true
vim.opt.number = true

-- tabs & indents
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- line wraps
vim.opt.wrap = false

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- appearance
vim.opt.termguicolors = true


-- backspace
vim.opt.backspace = "indent,eol,start"

--clipboard
vim.opt.clipboard:append("unnamedplus")

--searching
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Cursor on insert mode
vim.opt.guicursor = "n:-blinkon100-blinkoff200"

-- Other
vim.opt.updatetime = 50
vim.g.mapleader = " "


--disable sql omnicomplete
vim.g.omni_sql_no_default_maps = 1

--yank highlighting

local augroup = vim.api.nvim_create_augroup
local HighlightGroup = augroup('adkr38', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = HighlightGroup,
    pattern = "*",
    command = "%s/\\s\\+$//e",
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
