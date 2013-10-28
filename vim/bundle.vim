set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Git
Bundle 'tpope/vim-fugitive'

" JavaScript
Bundle "itspriddle/vim-jquery.git"
Bundle "pangloss/vim-javascript"

" Other
Bundle 'Lokaltog/vim-easymotion'
Bundle "nelstrom/vim-visual-star-search"
Bundle "vim-scripts/camelcasemotion.git"
Bundle "vim-scripts/matchit.zip.git"
Bundle "AndrewRadev/splitjoin.vim"
Bundle "jistr/vim-nerdtree-tabs.git"
Bundle "kien/ctrlp.vim"
Bundle "majutsushi/tagbar.git"
Bundle "scrooloose/nerdtree.git"
Bundle "scrooloose/syntastic.git"
Bundle "tpope/vim-surround.git"
Bundle "xsunsmile/showmarks.git"
"vim-misc is required for vim-session
Bundle "xolox/vim-misc"
Bundle "xolox/vim-session"
Bundle "MarcWeber/vim-addon-mw-utils.git"
Bundle "garbas/vim-snipmate.git"
Bundle "bling/vim-airline.git"

filetype plugin indent on     " required!
