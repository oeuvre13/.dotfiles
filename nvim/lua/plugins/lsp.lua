require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls" },
})
local lspconfig = require("lspconfig")

-- Lua
lspconfig.lua_ls.setup({})

local null_ls = require("null-ls")
null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,
	},
})
