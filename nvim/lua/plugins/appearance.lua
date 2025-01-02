require("catppuccin").setup({
	flavour = "macchiato",
	transparent_background = true,
	styles = {
		comments = { "italic" },
	},
})

require("alpha").setup(require("alpha.themes.startify").config)

require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		section_separators = "",
		component_separators = "",
	},
})
