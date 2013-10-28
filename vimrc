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

" NERDTree configuration
let NERDTreeIgnore=['\.rbc$', '\~$', 'Bin', 'node_modules', 'packages']
let g:NERDTreeDirArrows=1
map <Leader>n :NERDTreeTabsToggle<CR>
map <Leader>a :NERDTreeFind<CR>

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

" Turn off jslint errors by default
let g:JSLintHighlightErrorLine = 0

" MacVIM shift+arrow-keys behavior (required in .vimrc)
let macvim_hig_shift_movement = 1

" Powerline
let g:Powerline_symbols = 'fancy'

" Better up/down movement on wrapped lines
nnoremap j gj
nnoremap k gk

" Use sane regexes
nnoremap / /\v
vnoremap / /\v

" Keep search pattern at the center of the screen
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <silent> g# g#zz

" Toogle search highlights
noremap <space> :set hlsearch! hlsearch?<CR>

" Resize splits when window is resized
au VimResized * exe "normal! \<c-w>="

" Open new splits to the right and below
set splitright splitbelow

" SASS
au BufRead,BufNewFile *.scss set filetype=scss

" Enable Syntastic
let g:statusline_syntastic = 1
let g:syntastic_quiet_warnings = 1
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_loc_list_height = 7
let g:syntastic_check_on_open = 1

" EasyMotion
let g:EasyMotion_leader_key = ';'

" Make sure solarized is using 256 termcolors
let g:solarized_termcolors=256

" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Enable paste toggle and map it to F8
set pastetoggle=<F8>

" Resize splits when the window is resized
au VimResized * exe "normal! \<c-w>="

if version >= 730 && has("macunix")
" Default yank and paste go to Mac's clipboard
  set clipboard=unnamed
end

if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory($HOME . '/.vim/undo') == 0
    :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
  endif
  set undodir=./.vim-undo//
  set undodir+=~/.vim/undo//
  set undofile
endif

" HTML filetype on .master and .ascx pages
au BufRead,BufNewFile *.master set filetype=html
au BufRead,BufNewFile *.ascx set filetype=html

" Easier split movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Display incomplete commands
set showcmd

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

" Tab navigation - stolen from Jack Franklin
" https://github.com/jackfranklin/dotfiles/blob/master/.vimrc
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>

" Paste toggle
set pastetoggle=<leader>p
map <leader>p :set invpaste paste?<CR>

" CtrlP
let g:ctrlp_arg_map = 1
let g:ctrlp_working_path_mode = 2 " Smart path mode
let g:ctrlp_mru_files = 1 " Enable Most Recently Used files feature
let g:ctrlp_jump_to_buffer = 2 " Jump to tab AND buffer if already open
let g:ctrlp_split_window = 1 " <CR> = New Tab

" Relative number - http://jeffkreeftmeijer.com/2012/relative-line-numbers-in-vim-for-super-fast-movement/
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

" Paste toggle ()
set pastetoggle=<leader>p
map <leader>p :set invpaste paste?<CR>

" Airline
let g:airline_powerline_fonts=1

" Line height
set linespace=1

" Load bundles
if filereadable(expand("~/.vim/bundle.vim"))
  source ~/.vim/bundle.vim
endif

" Load settings files
for fpath in split(globpath('~/.vim/settings', '*.vim'), '\n')
    exe 'source' fpath
endfor
