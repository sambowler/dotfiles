set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" CSS
Bundle 'cakebaker/scss-syntax.vim'

" JavaScript
Bundle "itspriddle/vim-jquery.git"
Bundle "pangloss/vim-javascript"

" Motion
Bundle 'Lokaltog/vim-easymotion'
Bundle "nelstrom/vim-visual-star-search"
Bundle "vim-scripts/camelcasemotion.git"
Bundle "tpope/vim-surround.git"

" Files
Bundle "jistr/vim-nerdtree-tabs.git"
Bundle "kien/ctrlp.vim"
Bundle "scrooloose/nerdtree.git"
Bundle "mileszs/ack.vim"

" Other
Bundle "vim-scripts/matchit.zip.git"
Bundle "AndrewRadev/splitjoin.vim"
Bundle "majutsushi/tagbar.git"
Bundle "scrooloose/syntastic.git"
Bundle "xsunsmile/showmarks.git"
"vim-misc is required for vim-session
Bundle "xolox/vim-misc"
Bundle "xolox/vim-session"
Bundle "MarcWeber/vim-addon-mw-utils.git"
Bundle "garbas/vim-snipmate.git"
Bundle "bling/vim-airline.git"
Bundle "vim-scripts/YankRing.vim"
Bundle "altercation/vim-colors-solarized"

filetype plugin indent on     " required!
