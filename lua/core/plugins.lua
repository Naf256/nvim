local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

require('lazy').setup({
	 'wbthomason/packer.nvim',

	-- starup time optimise
	 'dstein64/vim-startuptime',
	 'lewis6991/impatient.nvim',
	 'nathom/filetype.nvim',

	-- buffer
	 {
		'akinsho/bufferline.nvim',
		dependencies = 'kyazdani42/nvim-web-devicons',
	},
	 'moll/vim-bbye', -- for more sensible delete buffer cmd
	 'numToStr/Comment.nvim', -- "gc" to comment visual selection

	-- themes (disabled other themes to optimize startup time)
     'sainnhe/sonokai',

	--	 { "catppuccin/nvim", as = "catppuccin" }
	--	   'dikiaap/minimalist'
	--     'kaicataldo/material.vim'
	--	   ({ 'projekt0n/github-nvim-theme' })
	--     'marko-cerovac/material.nvim'
	--	   'tiagovla/tokyodark.nvim'
-- Using Packer
-- Packer
---- Using Packer
	 'navarasu/onedark.nvim',
	--	   'arzg/vim-colors-xcode'	
    --     'ellisonleao/gruvbox.nvim'
	--	   { 'catppuccin/nvim', as='catppuccin' }
	--     'shaunsingh/nord.nvim'
	--     { 'sonph/onehalf', rtp='vim/' }
	--     'liuchengxu/space-vim-dark'
	--     'ahmedabdulrahman/aylin.vim'
	--     "rebelot/kanagawa.nvim"

	-- file tree
	 {
		'kyazdani42/nvim-tree.lua',
		dependencies = 'kyazdani42/nvim-web-devicons',
	},

	-- language
	 'williamboman/mason.nvim',
	 'williamboman/mason-lspconfig.nvim',
	 'neovim/nvim-lspconfig',
	 'hrsh7th/cmp-nvim-lsp',
	 'hrsh7th/cmp-buffer',
	 'hrsh7th/cmp-path',
	 'hrsh7th/cmp-cmdline',
	 'hrsh7th/nvim-cmp',
	 'L3MON4D3/LuaSnip',
	 'nvim-treesitter/nvim-treesitter',
	 'onsails/lspkind-nvim',

	-- git
	 {
		'lewis6991/gitsigns.nvim',
		tag = 'release',
	},

	 'kdheepak/lazygit.nvim',

	-- status line
	 {
		'nvim-lualine/lualine.nvim',
		dependencies = 'kyazdani42/nvim-web-devicons'
	},

	-- tagbar
	 'simrat39/symbols-outline.nvim',

	-- floating terminal
	 'voldikss/vim-floaterm',

	-- file telescope
	 {
		'nvim-telescope/telescope.nvim',
		dependencies = 'nvim-lua/plenary.nvim',
	},

	-- indent guide
	 "lukas-reineke/indent-blankline.nvim",

	-- english grammar check
	 'rhysd/vim-grammarous',

	 {
	  'windwp/nvim-autopairs',
      config = function() require('nvim-autopairs').setup {} end
	},

	 {
		{
			'windwp/nvim-ts-autotag',
			dependencies = {
				{ 'nvim-treesitter/nvim-treesitter' },
				{ 'hrsh7th/nvim-cmp' },
			},
		},
	},
	-- fullstack dev
	 'pangloss/vim-javascript', --JS support
	 'leafgarland/typescript-vim', --TS support
	 'maxmellon/vim-jsx-pretty', --JS and JSX syntax
	 'jparise/vim-graphql', --GraphQL syntax
	 'mattn/emmet-vim',
	 'sbdchd/neoformat'

})
