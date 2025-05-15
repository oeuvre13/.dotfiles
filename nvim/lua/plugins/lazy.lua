local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"--branch=stable",
		lazyrepo,
		lazypath,
	})
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- List all plugins
local plug_appearance = {
	{
		-- Colorscheme
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		priority = 1000,
	},
	{
		-- Greeter
		"goolord/alpha-nvim",
	},
	{
		-- Lualine
		"nvim-lualine/lualine.nvim",
	},
}
local plug_essential = {
	{
		-- Telescope
		"nvim-telescope/telescope.nvim",
		lazy = false,
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
		},
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		-- Treesitter
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
	},
	{
		"nvim-treesitter/playground",
	},
	{
		-- Oil
		"stevearc/oil.nvim",
		lazy = false,
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
        -- Harpoon
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
}
local plug_git = {
	{
		-- Neogit
		"NeogitOrg/neogit",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim", -- required
			"sindrets/diffview.nvim", -- optional - Diff integration

			-- Only one of these is needed, not both.
			"nvim-telescope/telescope.nvim", -- optional
		},
	},
	{
		-- Gitsigns
		"lewis6991/gitsigns.nvim",
	},
}
local plug_lsp = {
	{
		-- LSP servers
		"williamboman/mason.nvim",
	},
	{
		-- LSP server automatic installation
		"williamboman/mason-lspconfig.nvim",
	},
	{
		-- LSP server communication
		-- NOTE: further customization (i.e. language specifics) can be achieved by configuring LspAttach
		"neovim/nvim-lspconfig",
	},
	{
		-- Linter and Formatter
		"nvimtools/none-ls.nvim",
	},
}
local plug_autocmp = {
    {
        "hrsh7th/cmp-nvim-lsp"
    },
    {
        "L3MON4D3/LuaSnip",
        dependencies = {
            "saadparwaiz1/cmp_luasnip",
            "rafamadriz/friendly-snippets",
        },
    },
    {
        "hrsh7th/nvim-cmp"
    },
}

local plug_qol = {
	{
		-- Autopair
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		-- use opts = {} for passing setup options
		-- this is equivalent to setup({}) function
	},
	{
		-- Surround
		"tpope/vim-surround",
	},
	{
		-- Comments
		"numToStr/Comment.nvim",
		opts = {},
	},
	{
		-- Todo Comments
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},
	{
		"christoomey/vim-tmux-navigator",
		lazy = false,
		cmd = {
			"TmuxNavigateLeft",
			"TmuxNavigateDown",
			"TmuxNavigateUp",
			"TmuxNavigateRight",
			"TmuxNavigatePrevious",
		},
		keys = {
			{ "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
			{ "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
			{ "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
			{ "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
			{ "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
		},
	},
}

-- Setup lazy.nvim
require("lazy").setup({
	plug_appearance,
	plug_essential,
	plug_git,
	plug_lsp,
    plug_autocmp,
	plug_qol,
})
