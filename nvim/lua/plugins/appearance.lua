-- Colorscheme
require("catppuccin").setup({
	flavour = "macchiato",
	transparent_background = true,
	styles = {
		comments = { "italic" },
	},
})
vim.cmd.colorscheme("catppuccin")

-- Greeter
require("alpha").setup(require("alpha.themes.startify").config)

-- Lualine
require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		section_separators = "",
		component_separators = "",
	},
})
