vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])


vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
	'nvim-telescope/telescope.nvim',
  	requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
	'nvim-treesitter/nvim-treesitter',
	run = ':TSUpdate'
  }
  
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  vim.cmd('colorscheme rose-pine')

  use "nvim-treesitter/playground"
  use "ThePrimeagen/harpoon"
  use "mbbill/undotree"
  use("folke/zen-mode.nvim")
  use "terrortylor/nvim-comment"
  use("tpope/vim-fugitive")

  use 'karb94/neoscroll.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  use 'lambdalisue/fern.vim'
  
  -- use {
  --   'nvim-tree/nvim-tree.lua',
  --  requires = {
  --    'nvim-tree/nvim-web-devicons', -- optional
  --  },
  --  config = function()
  --    require("nvim-tree").setup {}
  --  end
  -- }
  --
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
  end)
