-- Line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tabs
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Indenting
vim.opt.smartindent = true

-- Undo
-- vim.opt.swapfile = false
-- vim.opt.backup = false
-- vim.opt.undodir = "C:/undodir/"
-- vim.opt.undofile = true

-- Searching
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- Scroll-off
vim.opt.scrolloff = 15

-- Update time
vim.opt.updatetime = 250

-- Show cursor line
vim.opt.cursorline = true

-- Disable mouse
vim.o.mouse = ""

-- Highlight text when yanking
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	callback = function()
		vim.highlight.on_yank()
	end,
})
