set ai
set history=1000
set ruler
set autoindent
syntax on
set autoread

" Remap leader
let mapleader = ","

set nocompatible

set number
set numberwidth=3

" Set encoding
set encoding=utf-8

" Tab completion
set wildmenu
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

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Use modeline overrides
set modeline
set modelines=10

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

" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc
au BufWritePost vundle.vim so ~/.vim/vundle.vim

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Resize splits when the window is resized
au VimResized * exe "normal! \<c-w>="

" HTML filetype on various file types
au BufRead,BufNewFile *.master set filetype=html
au BufRead,BufNewFile *.ascx set filetype=html
au BufRead,BufNewFile *.ejs set filetype=html
au! BufRead,BufNewFile *.js set filetype=javascript " Shouldn't really be necessary but VIM doesn't seem to be picking it up?!

" Remove all trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>

" fix slight delay after pressing ESC then O
" http://ksjoberg.com/vim-esckeys.html
set noesckeys

set shiftround

" Shortcut to edit .vimrc
map <Leader>ve :tabe ~/.vimrc<cr>

" Load bundles
if filereadable(expand("~/.vim/plugins.vim"))
  source ~/.vim/plugins.vim
endif

" Load settings files
for fpath in split(globpath('~/.vim/settings', '**/*.vim'), '\n')
    exe 'source' fpath
endfor

" Use jk/kj as esc
inoremap jk <esc>
inoremap kj <esc>

set relativenumber
