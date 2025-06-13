-- Mason
require("mason").setup()

-- Mason-LSPconfig
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "gopls", "html", "cssls", "ts_ls", "jdtls"},
})

-- LSPconfig
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup({
    capabilities = capabilities
})
lspconfig.gopls.setup({
    capabilities = capabilities
})
lspconfig.html.setup({
    capabilities = capabilities
})
lspconfig.cssls.setup({
    capabilities = capabilities
})
lspconfig.ts_ls.setup({
    capabilities = capabilities
})
lspconfig.jdtls.setup({
    capabilities = capabilities
})

-- Nonels
local null_ls = require("null-ls")
null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,
	},
})

vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>")
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>")
vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>")
vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>")
vim.keymap.set("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>")
vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>")
vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>")
vim.keymap.set("n", "<F2>", "<cmd>lua vim.lsp.buf.rename()<cr>")
vim.keymap.set({ "n", "x" }, "<F3>", "<cmd>lua vim.lsp.buf.format({async = true})<cr>")
vim.keymap.set("n", "<F4>", "<cmd>lua vim.lsp.buf.code_action()<cr>")
