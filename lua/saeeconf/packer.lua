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

  use 'navarasu/onedark.nvim'

  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use 'numToStr/Comment.nvim'

  use 'nvim-tree/nvim-tree.lua'

  -- use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
  -- use({'neovim/nvim-lspconfig'})
  -- use({'hrsh7th/nvim-cmp'})
  -- use({'hrsh7th/cmp-nvim-lsp'})

end)
