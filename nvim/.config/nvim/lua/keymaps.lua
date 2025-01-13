-- Mapleader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Moving highlighted lines vertically
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Vertical navigation
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')

-- Disable key
vim.keymap.set({ "n", "v" }, "<space>", "<nop>")
