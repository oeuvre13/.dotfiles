return {
    {
        -- Colorscheme
        'catppuccin/nvim',
        lazy = false,
        name = 'catppuccin',
        priority = 1000,

        config = function()
            require('catppuccin').setup({
                flavour = 'macchiato',
                transparent_background = true,
                styles = {
                    comments = {'italic'},
                },
            })
            vim.cmd.colorscheme 'catppuccin'
        end
    },
    {
        -- Lualine
        'nvim-lualine/lualine.nvim',

        config = function()
            require('lualine').setup({
                options = {
                    icons_enabled = true,
                    theme = 'auto',
                    section_separators = '',
                    component_separators = '',
                },
            })
        end
    }
}
