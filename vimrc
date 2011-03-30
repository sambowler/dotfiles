colorscheme clouds_midnight
set ai
set history=100
set ruler
set ts=4
set autoindent
syntax on
set hlsearch
filetype plugin on
filetype indent on

" Sudo to write
cmap w!! w !sudo tee % >/dev/null
