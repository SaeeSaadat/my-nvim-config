return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' },
      keys =
      {
          {'<leader>fg', "<cmd>Telescope live_grep<cr>", desc = "Live grep"},
          {'<leader>ff', "<cmd>Telescope find_files<cr>", desc = "Find file"},
      },
    }
