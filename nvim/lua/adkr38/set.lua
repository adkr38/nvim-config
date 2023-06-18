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
