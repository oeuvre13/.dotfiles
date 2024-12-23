-- [[ KEYMAPS ]]
-- Mapleader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Moving highlighted lines vertically
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Vertical navigation
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Yank to system clipboard
vim.keymap.set('n', '<leader>y', "\"+y")
vim.keymap.set('v', '<leader>y', "\"+y")

-- Disable key
vim.keymap.set({'n', 'v'}, '<space>', '<nop>')

-- [[ OPTIONS ]]

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
vim.o.mouse = ''

-- Highlight text when yanking
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- [[ LAZY ]]
-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.uv.fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    local out = vim.fn.system {
        'git',
        'clone',
        '--filter=blob:none',
        '--branch=stable',
        lazyrepo,
        lazypath,
    }
    if vim.v.shell_error ~= 0 then
        error('Error cloning lazy.nvim:\n' .. out)
    end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require('lazy').setup('plugins')

