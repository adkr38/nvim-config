vim.g.mapleader = " "

local keymap = vim.keymap

-- Half page & center
keymap.set("n", "<C-d>", "<C-d>zz") -- Down
keymap.set("n", "<C-u>", "<C-u>zz") -- Up

-- New tab with terminal
keymap.set("n", "<leader>tt", ":tabnew<CR>:term<CR>")

-- Delete character in NORMAL mode & don't save to register with x
keymap.set("n", "x", '"_x')
-- Increment | Decrement numbers in NORMAL mode with +-
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete word backwards
keymap.set("n", "dq", 'vb"_d')

-- Select all
keymap.set("n", "<leader>a", "gg<S-v>G")

-- Window management (NORMAL mode)
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>te", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- Plugins

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- maximize current tab

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

--zen mode
keymap.set("n", "<leader>zz", "<cmd>ZenMode<cr>", { silent = true })

--code actions
keymap.set("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<cr>")
keymap.set("v", "<leader>ca", ":lua vim.lsp.buf.code_action()<cr>")

--Run current python script
keymap.set("n", "<leader>py", "<cmd>:w|!source ./venv/bin/activate|python3 %<cr>")

--Run current go script
keymap.set("n", "<leader>go", "<cmd>:w|!go run %<cr>")
