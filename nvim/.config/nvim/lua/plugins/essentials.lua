-- Telescope
require("telescope").setup({
	pickers = {
		find_files = {
			hidden = true,
		},
	},
    extensions = {
        ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
        },
    },
})
require("telescope").load_extension("ui-select")

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>fs", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.git_files, {})
vim.keymap.set("n", "<leader>fz", builtin.live_grep, {})

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
vim.keymap.set("n", "-", "<cmd>Oil<CR>")


-- Harpoon
local harpoon = require('harpoon')
harpoon:setup({})

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>fh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
