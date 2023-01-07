-- packer.nvim
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	-- starup time optimise
	use 'dstein64/vim-startuptime'
	use 'lewis6991/impatient.nvim'
	use 'nathom/filetype.nvim'

	-- buffer
	use {
		'akinsho/bufferline.nvim',
		requires = 'kyazdani42/nvim-web-devicons'
	}
	use 'moll/vim-bbye' -- for more sensible delete buffer cmd

	-- themes (disabled other themes to optimize startup time)
    use 'sainnhe/sonokai'

	--	use { "catppuccin/nvim", as = "catppuccin" }
	--	  use 'dikiaap/minimalist'
	--    use 'kaicataldo/material.vim'
	--	  use ({ 'projekt0n/github-nvim-theme' })
	--    use 'marko-cerovac/material.nvim'
	--    use 'tiagovla/tokyodark.nvim'
-- Using Packer
-- Packer
---- Using Packer
	use 'navarasu/onedark.nvim'
	--	  use 'arzg/vim-colors-xcode'	

    --    use 'ellisonleao/gruvbox.nvim'
	--	  use { 'catppuccin/nvim', as='catppuccin' }
	--    use 'shaunsingh/nord.nvim'
	--    use { 'sonph/onehalf', rtp='vim/' }
	--    use 'liuchengxu/space-vim-dark'
	--    use 'ahmedabdulrahman/aylin.vim'
	--    use "rebelot/kanagawa.nvim"
	--    use 'NLKNguyen/papercolor-theme'
	--    use 'liuchengxu/space-vim-dark'

	-- file tree
	use {
		'kyazdani42/nvim-tree.lua',
		requires = 'kyazdani42/nvim-web-devicons'
	}

	-- language
	use { "williamboman/mason.nvim" }
	use { "williamboman/mason-lspconfig.nvim" }
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'L3MON4D3/LuaSnip'
	use 'nvim-treesitter/nvim-treesitter'
	use 'onsails/lspkind-nvim'

	-- git
	use {
		'lewis6991/gitsigns.nvim',
		tag = 'release',
	}

	use 'kdheepak/lazygit.nvim'

	-- status line
	use {
		'nvim-lualine/lualine.nvim',
		requires = 'kyazdani42/nvim-web-devicons'
	}

	-- tagbar
	use 'simrat39/symbols-outline.nvim'

	-- floating terminal
	use 'voldikss/vim-floaterm'

	-- file telescope
	use {
		'nvim-telescope/telescope.nvim',
		requires = 'nvim-lua/plenary.nvim'
	}

	-- indent guide
	use "lukas-reineke/indent-blankline.nvim"

	-- english grammar check
	use 'rhysd/vim-grammarous'

	use {
	  "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
	}

	use ({
		{
			'windwp/nvim-ts-autotag',
			require = {
				{ 'nvim-treesitter/nvim-treesitter' },
				{ 'hrsh7th/nvim-cmp' },
			}
		}
	})
	-- fullstack dev
	use 'pangloss/vim-javascript' --JS support
	use 'leafgarland/typescript-vim' --TS support
	use 'maxmellon/vim-jsx-pretty' --JS and JSX syntax
	use 'jparise/vim-graphql' --GraphQL syntax
	use 'mattn/emmet-vim'
	

end)
