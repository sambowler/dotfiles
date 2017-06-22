" Specify directory for plugins
call plug#begin('~/.vim/plugged')

" HTML
Plug 'othree/html5.vim'
Plug 'mattn/emmet-vim'

" CSS
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'

" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'jelera/vim-javascript-syntax'
Plug 'posva/vim-vue'
Plug 'mxw/vim-jsx'

" Motion
Plug 'nelstrom/vim-visual-star-search'
Plug 'vim-scripts/camelcasemotion'
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'

" Files
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'majutsushi/tagbar'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Text
Plug 'jwhitley/vim-matchit'
Plug 'AndrewRadev/splitjoin.vim'

" Themes
Plug 'w0ng/vim-hybrid'
Plug 'jacoborus/tender.vim'
Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'

" Other
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-repeat'
Plug 'xsunsmile/showmarks'
Plug 'plasticboy/vim-markdown'
"vim-misc is required for vim-session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'bling/vim-airline'
" Plug "maxbrunsfeld/vim-yankstack" " Conflict with sneak.vim
Plug 'editorconfig/editorconfig-vim'
Plug 'sjl/gundo.vim'
Plug 'mhinz/vim-startify'
Plug 'justinmk/vim-sneak'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'w0rp/ale'

call plug#end()
