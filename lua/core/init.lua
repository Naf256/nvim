-- basics
vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')
vim.o.number          = true
vim.o.relativenumber  = true
vim.o.termguicolors   = true
vim.o.shiftround      = true
vim.o.updatetime      = 250
vim.o.autowrite       = true
vim.o.hlsearch		  = false
vim.o.swapfile		  = false
vim.o.undofile		  = true
vim.o.ignorecase	  = true
vim.o.smartcase		  = true
vim.o.completeopt	  = 'menuone,noselect'

local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = '*',
})

if (vim.fn.has('termguicolors') == 1) then
    vim.opt.termguicolors = true
end
-- tabs
vim.o.autoindent      = true
vim.o.tabstop         = 4
vim.o.shiftwidth      = 4
vim.o.softtabstop     = 4

require("core.plugins")
-- disable some useless standard plugins to save startup time
-- these features have been better covered by plugins
vim.g.loaded_matchparen        = 1
vim.g.loaded_matchit           = 1
vim.g.loaded_logiPat           = 1
vim.g.loaded_rrhelper          = 1
vim.g.loaded_tarPlugin         = 1
vim.g.loaded_gzip              = 1
vim.g.loaded_zipPlugin         = 1
vim.g.loaded_2html_plugin      = 1
vim.g.loaded_shada_plugin      = 1
vim.g.loaded_spellfile_plugin  = 1
vim.g.loaded_netrw             = 1
vim.g.loaded_netrwPlugin       = 1
vim.g.loaded_tutor_mode_plugin = 1
vim.g.loaded_remote_plugins    = 1
require("core.theme")

-- Load plugin configs
-- plugins without extra configs are configured directly here
require("impatient")

require("configs.autocomplete").config()
require("configs.statusline").config()
require("configs.filetree").config()
require("configs.treesitter").config()
require("configs.outlinetree").config()
require("configs.git").config()
require("configs.bufferline").config()
require("configs.grammar").config()
require("configs.lspconf")
require("nvim-autopairs")
require("mason").setup()
require("mason-lspconfig").setup()
require("telescope").setup()
require("Comment").setup()

--load keybindings
require("core.keymaps")
