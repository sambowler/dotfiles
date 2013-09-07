set ai
set history=100
set ruler
set autoindent
syntax on
set nohlsearch
set guifont=Source\ Code\ Pro\ for\ Powerline:h13
set autoread

" Remap leader
let mapleader = ","

" set cursorline
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" Sudo to write
cmap w!! w !sudo tee % >/dev/null

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

" Status bar
set laststatus=2

" Without setting this, ZoomWin restores windows in a way that causes
" equalalways behavior to be triggered the next time CommandT is used.
" This is likely a bludgeon to solve some other issue, but it works
set noequalalways

" NERDTree configuration
let NERDTreeIgnore=['\.rbc$', '\~$']
let g:NERDTreeDirArrows=1
map <Leader>n :NERDTreeTabsToggle<CR>
map <Leader>a :NERDTreeFind<CR>

" ZoomWin configuration
map <Leader>z :ZoomWin<CR>

" CTags
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
map <C-\> :tnext<CR>

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

function s:setupWrapping()
  set wrap
  set wm=2
  set textwidth=72
endfunction

function s:setupMarkup()
  call s:setupWrapping()
  map <buffer> <Leader>p :Mm <CR>
endfunction

" make uses real tabs
au FileType make                                     set noexpandtab

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby

" md, markdown, and mk are markdown and define buffer-local preview
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()

au BufRead,BufNewFile *.txt call s:setupWrapping()

" make python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python  set tabstop=4 textwidth=79

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Inserts the path of the currently edited file into a command
" Command mode: Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" Unimpaired configuration
" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" gist-vim defaults
if has("mac")
  let g:gist_clip_command = 'pbcopy'
elseif has("unix")
  let g:gist_clip_command = 'xclip -selection clipboard'
endif
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

" Use modeline overrides
set modeline
set modelines=10

" Background
set background=dark

" Color scheme
colorscheme smyck

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Turn off jslint errors by default
let g:JSLintHighlightErrorLine = 0

" MacVIM shift+arrow-keys behavior (required in .vimrc)
let macvim_hig_shift_movement = 1

" % to bounce from do to end etc.
runtime! macros/matchit.vim

" Include user's local vim config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

" Save files on lost focus
au FocusLost * silent! wall

" Install pathogen
call pathogen#infect()

" Powerline
let g:Powerline_symbols = 'fancy'

" DAMN YOU SHIFT-W
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Wq wq
cnoreabbrev WQ wq

" Better up/down movement on wrapped lines
nnoremap j gj
nnoremap k gk

" Force save files that require root permissions
cmap w!! %!sudo tee > /dev/null %

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

" JS shiftwidth
" autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

" EasyMotion
let g:EasyMotion_leader_key = ';'

" Make sure solarized is using 256 termcolors
let g:solarized_termcolors=256

" Load closetag
au Filetype html,xml,xsl source ~/.vim/bundle/closetag.vim/plugin/closetag.vim

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

" Disable K looking stuff up
map K <Nop>

" Turn on spell-checking in markdown and text.
au BufRead,BufNewFile *.md,*.txt setlocal spell
"
" Don't add the comment prefix when I hit enter or o/O on a comment line.
set formatoptions-=or
au BufReadPost,BufNewFile * set formatoptions-=or

set shiftround

" Shortcut to edit .vimrc
map <Leader>ve :tabe ~/.vimrc<cr>

" Ctrl-P
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_arg_map = 1

" Tab navigation - stolen from Jack Franklin
" https://github.com/jackfranklin/dotfiles/blob/master/.vimrc
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>

" TagBar
nmap <F8> :TagbarToggle<CR>

" Join lines and restore cursor location
nnoremap J mjJ`j

" Paste toggle
set pastetoggle=<leader>p
map <leader>p :set invpaste paste?<CR>

" Remap :W to :w
command W w

" CtrlP
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

:au FocusLost * :set number
:au FocusGained * :set relativenumber

autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

" http://stackoverflow.com/a/7961618
"
" Move current tab into the specified direction.
"
" @param direction -1 for left, 1 for right.
function! TabMove(direction)
    " get number of tab pages.
    let ntp=tabpagenr("$")
    " move tab, if necessary.
    if ntp > 1
        " get number of current tab page.
        let ctpn=tabpagenr()
        " move left.
        if a:direction < 0
            let index=((ctpn-1+ntp-1)%ntp)
        else
            let index=(ctpn%ntp)
        endif

        " move tab page.
        execute "tabmove ".index
    endif
endfunction

map <leader>H :call TabMove(-1)<CR>
map <leader>L :call TabMove(1)<CR>

" Replace visual selection
" http://stackoverflow.com/a/676619
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" Paste toggle ()
set pastetoggle=<leader>p
map <leader>p :set invpaste paste?<CR>

" Signify
let g:signify_vcs_list = [ 'svn', 'git' ]

" Airline
let g:airline_powerline_fonts=1
