return {
    {
        -- Autopair
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
        -- use opts = {} for passing setup options
        -- this is equivalent to setup({}) function
    },
    {
        -- Surround
        'tpope/vim-surround'
    },
    {
        -- Comments
        'numToStr/Comment.nvim',
        opts = {},
    },
    {
        -- Todo Comments
        'folke/todo-comments.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        opts = {},
    }
}
