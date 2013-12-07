set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" HTML
Bundle "othree/html5.vim"

" CSS
Bundle "cakebaker/scss-syntax.vim"
Bundle "hail2u/vim-css3-syntax"

" JavaScript
Bundle "itspriddle/vim-jquery.git"
Bundle "pangloss/vim-javascript"
Bundle "elzr/vim-json"

" Motion
Bundle "Lokaltog/vim-easymotion"
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

" Text
Bundle "tsaleh/vim-matchit"
Bundle "nathanaelkane/vim-indent-guides"
Bundle "AndrewRadev/splitjoin.vim"

" Themes
Bundle "zenorocha/dracula-theme"
Bundle "altercation/vim-colors-solarized"

" Other
Bundle "majutsushi/tagbar.git"
Bundle "scrooloose/syntastic.git"
Bundle "xsunsmile/showmarks.git"
Bundle "plasticboy/vim-markdown.git"
"vim-misc is required for vim-session
Bundle "xolox/vim-misc"
Bundle "xolox/vim-session"
Bundle "vim-scripts/AutoTag"
Bundle "MarcWeber/vim-addon-mw-utils.git"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate.git"
Bundle "bling/vim-airline.git"
Bundle "maxbrunsfeld/vim-yankstack"
Bundle "editorconfig/editorconfig-vim"
Bundle "sjl/gundo.vim"
Bundle "mhinz/vim-startify"
Bundle "ervandew/supertab"

filetype plugin indent on     " required!
