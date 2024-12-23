return {
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        build = ':TSUpdate',

        config = function ()
            require('nvim-treesitter').setup({
                ensure_installed = {'cpp', 'c', 'lua', 'javascript', 'go', 'python'},
                auto_install = true,
                highlight = {enable = true},
                indent = {enable = true},
            })
        end
    },
    {
        'nvim-treesitter/playground'
    }
}
