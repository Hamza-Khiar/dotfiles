vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'mbbill/undotree'
 --THEMES 
  use {
	  'folke/tokyonight.nvim',
	  'navarasu/onedark.nvim',
	  { "bluz71/vim-nightfly-colors", as = "nightfly" },
	  { "bluz71/vim-moonfly-colors", as = "moonfly" }
  }
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {                                      -- Optional
		  'williamboman/mason.nvim',
		  run = function()
			  pcall(vim.cmd, 'MasonUpdate')
		  end,
	  },
	  {'williamboman/mason-lspconfig.nvim'}, -- Optional
	  -- Autocompletion
	  {'hrsh7th/nvim-cmp'},     -- Required
	  {'hrsh7th/cmp-nvim-lsp'}, -- Required
	  {'L3MON4D3/LuaSnip'},     -- Required
  }
}
 use { 'windwp/nvim-autopairs' }
 use { 'windwp/nvim-ts-autotag' }
 use { 'tpope/vim-commentary' , as="commentary"}
end)

