lua require('core.init')

set guifont=SFMono\ NERD\ Font:h13
set clipboard^=unnamed,unnamedplus
set guicursor=i:block

if has('unix')
	set thesaurus+=/usr/share/dict/words
endif

autocmd FileType markdown setlocal spell
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType javascriptreact setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType typescriptreact setlocal shiftwidth=2 tabstop=2 expandtab
