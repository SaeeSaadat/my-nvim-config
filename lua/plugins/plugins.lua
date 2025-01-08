return {
    {
        'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons', opts = {}
    },
    {
        'numToStr/Comment.nvim',
        opts = {
            mappings = {
                basic = true,
                extra = true
            },
            toggler = {
                line = '<leader>/',
                block = '<leader>b/'
            },
            opleader = {
                ---Line-comment keymap
                line = '<leader>/',
                ---Block-comment keymap
                block = '<leader>b/',
            },
        }
    },
    {
        'tpope/vim-fugitive',
        opts = {},
        lazy = true,
    },
    {
        "ThePrimeagen/harpoon",
        opts = {},
        lazy = false,
        branch = "harpoon2",
        dependencies = {
            'nvim-lua/plenary.nvim'
        },
        keys = {
            {"<leader>a", function() require("harpoon"):list():add() end},
            {"<leader><enter>", function() local harpoon = require("harpoon") harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "harpoon quick menu", },

            -- Toggle previous & next buffers stored within Harpoon list
            {"<leader>[", function() require("harpoon"):list():prev() end},
            {"<leader>]", function() require("harpoon"):list():next() end},
        }
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        lazy = false,
        opts = {}
    },
    {
        "williamboman/mason.nvim",
        lazy = true,
        opts = {}
    },
}
