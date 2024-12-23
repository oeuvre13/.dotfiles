return {
    {
        -- LSP servers
        "williamboman/mason.nvim",
        config = function()
            require('mason').setup()
        end
    },
    {
        -- LSP server automatic installation
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = { 'lua_ls' }
            })
        end
    },
    {
        -- LSP server communication
        -- NOTE: further customization (i.e. language specifics) can be achieved by configuring LspAttach
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")

            -- Lua
            lspconfig.lua_ls.setup({})

            vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
            vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
            vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
            vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
            vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
            vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')
            vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
            vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')
            vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
            vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>')
            vim.keymap.set({ 'n', 'x' }, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>')
            vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>')
        end
    }
}
