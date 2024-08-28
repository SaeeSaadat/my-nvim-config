-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
  	'nvim-telescope/telescope.nvim', tag = '0.1.8',
  	requires = { {'nvim-lua/plenary.nvim'} }
	}

  use 'scottmckendry/cyberdream.nvim'

  use 'Vimjas/vim-python-pep8-indent'

  use 'navarasu/onedark.nvim'

  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use 'numToStr/Comment.nvim'

  use 'nvim-tree/nvim-tree.lua'

  -- use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
}

  use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
  use({'neovim/nvim-lspconfig'})
  use({'hrsh7th/nvim-cmp'})
  use({'hrsh7th/cmp-nvim-lsp'})

  use {"ellisonleao/glow.nvim", config = function() require("glow").setup() end}

  use "ggandor/leap.nvim"

  -- use "folke/which-key.nvim"

  use "smithbm2316/centerpad.nvim"

  use "tpope/vim-surround"

  use "folke/noice.nvim"
  use "rcarriga/nvim-notify"
  use "MunifTanjim/nui.nvim"

  use "nvim-lua/plenary.nvim"
  use {
      "ThePrimeagen/harpoon",
      branch = "harpoon2",
      requires = { {"nvim-lua/plenary.nvim"} }
  }

  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim'

  use 'christoomey/vim-tmux-navigator'

  use 'vim-test/vim-test'
end)
