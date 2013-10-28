set ai
set history=1000
set ruler
set autoindent
syntax on
set nohlsearch
set guifont=Source\ Code\ Pro\ for\ Powerline:h13
set autoread

" Remap leader
let mapleader = ","

set nocompatible

set number
set numberwidth=3

" Set encoding
set encoding=utf-8

" Whitespace stuff
set wrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*
set wildignore+=*/bin/**
set wildignore+=*/node_modules/**
set wildignore+=*/packages/**
set wildignore+=*/js/build/**

" Status bar
set laststatus=2

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" md, markdown, and mk are markdown and define buffer-local preview
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Use modeline overrides
set modeline
set modelines=10

" Background
set background=dark

" Color scheme
colorscheme solarized

" Directories for swp files
set backupdir=~/.vim-backup
set directory=~/.vim-backup

" MacVIM shift+arrow-keys behavior (required in .vimrc)
let macvim_hig_shift_movement = 1

" Better up/down movement on wrapped lines
nnoremap j gj
nnoremap k gk

" SASS
au BufRead,BufNewFile *.scss set filetype=scss

" Make sure solarized is using 256 termcolors
let g:solarized_termcolors=256

" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Resize splits when the window is resized
au VimResized * exe "normal! \<c-w>="

if version >= 730 && has("macunix")
" Default yank and paste go to Mac's clipboard
  set clipboard=unnamed
end

" HTML filetype on .master and .ascx pages
au BufRead,BufNewFile *.master set filetype=html
au BufRead,BufNewFile *.ascx set filetype=html

" Give more context when scrolling off the end of a buffer
set scrolloff=3

" Make tab completion act like bash
set wildmenu

" Remove all trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>

" fix slight delay after pressing ESC then O
" http://ksjoberg.com/vim-esckeys.html
set noesckeys

" Turn on spell-checking in markdown and text.
au BufRead,BufNewFile *.md,*.txt setlocal spell

set shiftround

" Shortcut to edit .vimrc
map <Leader>ve :tabe ~/.vimrc<cr>

" Line height
set linespace=1

" Load bundles
if filereadable(expand("~/.vim/bundle.vim"))
  source ~/.vim/bundle.vim
endif

" Load settings files
for fpath in split(globpath('~/.vim/settings', '**/*.vim'), '\n')
    exe 'source' fpath
endfor
