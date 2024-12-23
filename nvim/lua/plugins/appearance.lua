return {
    {
        -- Colorscheme
        'catppuccin/nvim',
        lazy = false,
        name = 'catppuccin',
        priority = 1000,

        opts = {
            flavour = 'macchiato', 
            -- transparent_background = true,
            styles = {
                comments = {'italic'},
            },
        },

        config = function()
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
