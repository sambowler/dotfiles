set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" HTML
Bundle "othree/html5.vim"
Bundle "mattn/emmet-vim"

" CSS
Bundle "cakebaker/scss-syntax.vim"
Bundle "hail2u/vim-css3-syntax"

" JavaScript
Bundle "itspriddle/vim-jquery.git"
Bundle "pangloss/vim-javascript"
Bundle "elzr/vim-json"

" Completion
Plugin 'Valloric/YouCompleteMe'
Bundle "marijnh/tern_for_vim"

" Motion
Bundle "nelstrom/vim-visual-star-search"
Bundle "vim-scripts/camelcasemotion.git"
Bundle "tpope/vim-surround.git"
Bundle "tomtom/tcomment_vim.git"

" Files
Bundle "jistr/vim-nerdtree-tabs.git"
Bundle "kien/ctrlp.vim"
Bundle "scrooloose/nerdtree.git"
Bundle "mileszs/ack.vim"
Bundle "majutsushi/tagbar"

" Git
Bundle "tpope/vim-fugitive"
" Bundle "airblade/vim-gitgutter"

" Text
Bundle "jwhitley/vim-matchit"
Bundle "AndrewRadev/splitjoin.vim"

" Themes
Bundle "w0ng/vim-hybrid"

" Other
Bundle "christoomey/vim-tmux-navigator"
Bundle "tpope/vim-repeat"
Bundle "scrooloose/syntastic.git"
Bundle "xsunsmile/showmarks.git"
Bundle "plasticboy/vim-markdown.git"
"vim-misc is required for vim-session
Bundle "xolox/vim-misc"
Bundle "xolox/vim-session"
Bundle "MarcWeber/vim-addon-mw-utils.git"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate.git"
Bundle "bling/vim-airline.git"
" Bundle "maxbrunsfeld/vim-yankstack" " Conflict with sneak.vim
Bundle "editorconfig/editorconfig-vim"
Bundle "sjl/gundo.vim"
Bundle "mhinz/vim-startify"
Bundle "rking/ag.vim"
Bundle "justinmk/vim-sneak"

filetype plugin indent on     " required!
