local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

return require("lazy").setup({
    "williamboman/mason.nvim",
    {
	"nvim-telescope/telescope.nvim", branch='0.1.x',
	dependencies={'nvim-lua/plenary.nvim'}
    },
    "nvim-treesitter/nvim-treesitter",
    {
	    "neovim/nvim-lspconfig",
    	dependencies={
	    	{"williamboman/mason.nvim",config=true},
		    'williamboman/mason-lspconfig.nvim',
    		{'folke/neodev.nvim',opts={}},
	    },
    },
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
          'L3MON4D3/LuaSnip',
          'hrsh7th/cmp-nvim-lsp',
          'hrsh7th/cmp-path',
          'hrsh7th/cmp-buffer',
          'saadparwaiz1/cmp_luasnip',
        },
    },
    --colorschemes
    "folke/tokyonight.nvim",
    "catppuccin/nvim",
    --"uloco/bluloco.nvim",
    { 'numToStr/Comment.nvim', opts = {} },

})

-- Mason setup



