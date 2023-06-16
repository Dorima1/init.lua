-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({
      'nanotech/jellybeans.vim',
      as = 'jellybeans',
      config = function()
    	  vim.cmd('colorscheme jellybeans')
      end
  })
  -- use({
  --     'rose-pine/neovim',
  --     as = 'rose-pine',
  --     config = function()
  --   	  vim.cmd('colorscheme rose-pine')
  --     end
  -- })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use('nvim-lua/completion-nvim')
  use('ThePrimeagen/vim-be-good')
  use {'neoclide/coc.nvim', branch = 'release'}
  use('lervag/vimtex')
  -- use('https://github.com/vim-airline/vim-airline')
  use('https://github.com/lifepillar/pgsql.vim') -- from backup nvim
  use('https://github.com/ap/vim-css-color') -- CSS Color Preview
  -- use('https://github.com/ryanoasis/vim-devicons') -- Developer's Icons
  -- use('https://github.com/preservim/tagbar') -- Tagbar for code navigation
  -- use('https://github.com/terryma/vim-multiple-cursors') -- CTRL + N for multiple cursors

end)
