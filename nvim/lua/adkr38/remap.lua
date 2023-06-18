vim.g.mapleader = " "


-- Moving & auto-indenting highlighted text 
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- Append next line on current end
vim.keymap.set("n", "J", "mzJ`z")

-- Neovim menu 
vim.keymap.set("n", "<leader>pv",vim.cmd.Ex)

-- Ctrl-c Esc match for visual line
vim.keymap.set("i","<C-c>","<Esc>")

-- Centering on half page jumps
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Down
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Up

-- Centering on searches
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Delete character in NORMAL mode & don't save to register with x
vim.keymap.set("n", "x", '"_x')

-- Increment | Decrement numbers in NORMAL mode with +-
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")

-- Delete word backwards
vim.keymap.set("n", "dq", 'vb"_d')

-- Select all
vim.keymap.set("n", "<leader>a", "gg<S-v>G")

--Run current python script
vim.keymap.set("n", "<leader>py", "<cmd>:w|!source ./.venv/bin/activate|python3 %<cr>")
