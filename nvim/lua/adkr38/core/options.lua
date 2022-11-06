local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indents
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wraps
opt.wrap = false

-- search
opt.ignorecase = true
opt.smartcase = true

-- appearnce
opt.termguicolors = true
opt.background = "dark"

-- backspace
opt.backspace = "indent,eol,start"

--clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")








