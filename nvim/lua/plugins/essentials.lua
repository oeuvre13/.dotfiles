-- Telescope
require("telescope").setup({
	pickers = {
		find_files = {
			hidden = true,
		},
	},
})

require("telescope").setup({
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown({}),
		},
	},
})
require("telescope").load_extension("ui-select")

-- Treesitter
require("nvim-treesitter").setup({
	-- ensure_installed = {'cpp', 'c', 'lua', 'javascript', 'go', 'python'},
	auto_install = true,
	highlight = { enable = true },
	indent = { enable = true },
})

-- Oil
require("oil").setup({
	default_file_explorer = true,
	view_options = {
		show_hidden = true,
	},
})
