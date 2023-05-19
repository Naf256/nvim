lua require('core.init')

set guifont=SFMono\ NERD\ Font:h13
set clipboard^=unnamedplus
set guicursor=i:block

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

autocmd FileType markdown setlocal spell
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType javascriptreact setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType typescriptreact setlocal shiftwidth=2 tabstop=2 expandtab
