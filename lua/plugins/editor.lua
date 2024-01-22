return {
    {
        'windwp/nvim-autopairs',
        lazy = false,
        config = function()
            require('nvim-autopairs').setup()
        end,
    },
    {
        'okuuva/auto-save.nvim',
        config = function()
            require("auto-save").setup()
        end,
    },
    {
        'numToStr/Comment.nvim',
        config = function()
            require("Comment").setup()
        end,
    },
    {
        'ThePrimeagen/vim-be-good',
    },
}
