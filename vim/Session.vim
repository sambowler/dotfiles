let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <M-D-Left> h
imap <M-D-Right>  l
imap <M-D-Down>  j
imap <M-D-Up>  k
imap <D-9> 9gt
imap <D-8> 8gt
imap <D-7> 7gt
imap <D-6> 6gt
imap <D-5> 5gt
imap <D-4> 4gt
imap <D-3> 3gt
imap <D-2> 2gt
imap <D-1> 1gt
imap <D-0> 0gt
inoremap <S-D-Down> <C-S-End>
inoremap <S-D-Up> <C-S-Home>
inoremap <M-S-Right> <C-S-Right>
inoremap <S-D-Right> <S-End>
inoremap <M-S-Left> <C-S-Left>
inoremap <S-D-Left> <S-Home>
imap <D-BS> 
imap <M-BS> 
imap <M-Down> }
inoremap <D-Down> <C-End>
imap <M-Up> {
inoremap <D-Up> <C-Home>
noremap! <M-Right> <C-Right>
noremap! <D-Right> <End>
noremap! <M-Left> <C-Left>
noremap! <D-Left> <Home>
inoremap <Plug>ZenCodingAnchorizeSummary :call zencoding#anchorizeURL(1)a
inoremap <Plug>ZenCodingAnchorizeURL :call zencoding#anchorizeURL(0)a
inoremap <Plug>ZenCodingRemoveTag :call zencoding#removeTag()a
inoremap <Plug>ZenCodingSplitJoinTagInsert :call zencoding#splitJoinTag()
inoremap <Plug>ZenCodingToggleComment :call zencoding#toggleComment()a
inoremap <Plug>ZenCodingImageSize :call zencoding#imageSize()a
inoremap <Plug>ZenCodingPrev :call zencoding#moveNextPrev(1)
inoremap <Plug>ZenCodingNext :call zencoding#moveNextPrev(0)
inoremap <Plug>ZenCodingBalanceTagOutwardInsert :call zencoding#balanceTag(-1)
inoremap <Plug>ZenCodingBalanceTagInwardInsert :call zencoding#balanceTag(1)
inoremap <Plug>ZenCodingExpandWord u:call zencoding#expandAbbr(1,"")a
inoremap <Plug>ZenCodingExpandAbbr u:call zencoding#expandAbbr(0,"")a
inoremap <silent> <S-Tab> =BackwardsSnippet()
inoremap <C-Tab> 	
nnoremap  
snoremap <silent> 	 i<Right>=TriggerSnippet()
nnoremap <NL> <NL>
nnoremap  
nnoremap  
nmap o <Plug>ZoomWin
snoremap  b<BS>
vmap c <Plug>ZenCodingCodePretty
vmap m <Plug>ZenCodingMergeLines
vmap D <Plug>ZenCodingBalanceTagOutwardVisual
vmap d <Plug>ZenCodingBalanceTagInwardVisual
vmap , <Plug>ZenCodingExpandVisual
nmap A <Plug>ZenCodingAnchorizeSummary
nmap a <Plug>ZenCodingAnchorizeURL
nmap k <Plug>ZenCodingRemoveTag
nmap j <Plug>ZenCodingSplitJoinTagNormal
nmap / <Plug>ZenCodingToggleComment
nmap i <Plug>ZenCodingImageSize
nmap N <Plug>ZenCodingPrev
nmap n <Plug>ZenCodingNext
nmap D <Plug>ZenCodingBalanceTagOutwardNormal
nmap d <Plug>ZenCodingBalanceTagInwardNormal
nmap , <Plug>ZenCodingExpandNormal
map  :tnext
map  a
noremap   :set hlsearch! hlsearch?
nnoremap <silent> # #zz
snoremap % b<BS>%
snoremap ' b<BS>'
nnoremap <silent> * *zz
map ,= =
nmap ,ca <Plug>NERDCommenterAltDelims
xmap ,cu <Plug>NERDCommenterUncomment
nmap ,cu <Plug>NERDCommenterUncomment
xmap ,cb <Plug>NERDCommenterAlignBoth
nmap ,cb <Plug>NERDCommenterAlignBoth
xmap ,cl <Plug>NERDCommenterAlignLeft
nmap ,cl <Plug>NERDCommenterAlignLeft
nmap ,cA <Plug>NERDCommenterAppend
xmap ,cy <Plug>NERDCommenterYank
nmap ,cy <Plug>NERDCommenterYank
xmap ,cs <Plug>NERDCommenterSexy
nmap ,cs <Plug>NERDCommenterSexy
xmap ,ci <Plug>NERDCommenterInvert
nmap ,ci <Plug>NERDCommenterInvert
nmap ,c$ <Plug>NERDCommenterToEOL
xmap ,cn <Plug>NERDCommenterNested
nmap ,cn <Plug>NERDCommenterNested
xmap ,cm <Plug>NERDCommenterMinimal
nmap ,cm <Plug>NERDCommenterMinimal
xmap ,c  <Plug>NERDCommenterToggle
nmap ,c  <Plug>NERDCommenterToggle
xmap ,cc <Plug>NERDCommenterComment
nmap ,cc <Plug>NERDCommenterComment
nmap ,ig :IndentGuidesToggle
vnoremap <silent> ,k :call EasyMotionJK(1, 1)
onoremap <silent> ,k :call EasyMotionJK(0, 1)
nnoremap <silent> ,k :call EasyMotionJK(0, 1)
vnoremap <silent> ,j :call EasyMotionJK(1, 0)
onoremap <silent> ,j :call EasyMotionJK(0, 0)
nnoremap <silent> ,j :call EasyMotionJK(0, 0)
vnoremap <silent> ,ge :call EasyMotionE(1, 1)
onoremap <silent> ,ge :call EasyMotionE(0, 1)
nnoremap <silent> ,ge :call EasyMotionE(0, 1)
onoremap <silent> ,e :call EasyMotionE(0, 0)
nnoremap <silent> ,e :call EasyMotionE(0, 0)
vnoremap <silent> ,b :call EasyMotionWB(1, 1)
onoremap <silent> ,b :call EasyMotionWB(0, 1)
nnoremap <silent> ,b :call EasyMotionWB(0, 1)
vnoremap <silent> ,w :call EasyMotionWB(1, 0)
onoremap <silent> ,w :call EasyMotionWB(0, 0)
nnoremap <silent> ,w :call EasyMotionWB(0, 0)
vnoremap <silent> ,T :call EasyMotionT(1, 1)
onoremap <silent> ,T :call EasyMotionT(0, 1)
nnoremap <silent> ,T :call EasyMotionT(0, 1)
vnoremap <silent> ,t :call EasyMotionT(1, 0)
onoremap <silent> ,t :call EasyMotionT(0, 0)
nnoremap <silent> ,t :call EasyMotionT(0, 0)
vnoremap <silent> ,F :call EasyMotionF(1, 1)
onoremap <silent> ,F :call EasyMotionF(0, 1)
nnoremap <silent> ,F :call EasyMotionF(0, 1)
vnoremap <silent> ,f :call EasyMotionF(1, 0)
onoremap <silent> ,f :call EasyMotionF(0, 0)
nnoremap <silent> ,f :call EasyMotionF(0, 0)
map ,ve :tabe ~/.vimrc
nnoremap ,q :mksession! ~/.vim/Session.vim:wqa
nnoremap ,W :%s/\s\+$//:let @/=''
map ,te :tabe =expand("%:p:h") . "/" 
vnoremap <silent> ,e :call EasyMotionE(1, 0)
map ,rt :!ctags --extra=+f -R *
map ,z :ZoomWin
map ,a :NERDTreeFind
map ,n :NERDTreeTabsToggle
noremap / :call SearchCompleteStart()/
vnoremap < <gv
vnoremap > >gv
map K <Nop>
nnoremap <silent> N Nzz
xmap S <Plug>VSurround
snoremap U b<BS>U
vmap [% [%m'gv``
snoremap \ b<BS>\
vmap ]% ]%m'gv``
snoremap ^ b<BS>^
snoremap ` b<BS>`
vmap a% [%v]%
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
nnoremap <silent> g# g#zz
nnoremap <silent> g* g*zz
nnoremap j gj
nnoremap k gk
nnoremap <silent> n nzz
xmap s <Plug>Vsurround
nnoremap td :tabclose
nnoremap tm :tabm 
nnoremap tn :tabnext 
nnoremap tt :tabedit 
nnoremap tl :tablast
nnoremap tk :tabprev
nnoremap tj :tabnext
nnoremap th :tabfirst
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
map <M-D-Left> h
map <M-D-Right> l
map <M-D-Down> j
map <M-D-Up> k
map <D-9> 9gt
map <D-8> 8gt
map <D-7> 7gt
map <D-6> 6gt
map <D-5> 5gt
map <D-4> 4gt
map <D-3> 3gt
map <D-2> 2gt
map <D-1> 1gt
map <D-0> 0gt
vmap <D-[> <gv
vmap <D-]> >gv
map <D-/> <Plug>NERDCommenterToggle
map <D-e> :call StartTerm()
map <D-F> :Ack 
vnoremap <S-D-Down> <C-S-End>
nnoremap <S-D-Down> <C-S-End>
vnoremap <S-D-Up> <C-S-Home>
nnoremap <S-D-Up> <C-S-Home>
vnoremap <M-S-Right> <C-S-Right>
nnoremap <M-S-Right> <C-S-Right>
vnoremap <S-D-Right> <S-End>
nnoremap <S-D-Right> <S-End>
vnoremap <M-S-Left> <C-S-Left>
nnoremap <M-S-Left> <C-S-Left>
vnoremap <S-D-Left> <S-Home>
nnoremap <S-D-Left> <S-Home>
map <M-Down> }
noremap <D-Down> <C-End>
map <M-Up> {
noremap <D-Up> <C-Home>
noremap <M-Right> <C-Right>
noremap <D-Right> <End>
noremap <M-Left> <C-Left>
noremap <D-Left> <Home>
snoremap <Left> bi
snoremap <Right> a
snoremap <BS> b<BS>
snoremap <silent> <S-Tab> i<Right>=BackwardsSnippet()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
vnoremap <Plug>ZenCodingCodePretty :call zencoding#codePretty()
vnoremap <Plug>ZenCodingMergeLines :call zencoding#mergeLines()
vnoremap <Plug>ZenCodingBalanceTagOutwardVisual :call zencoding#balanceTag(-2)
vnoremap <Plug>ZenCodingBalanceTagInwardVisual :call zencoding#balanceTag(2)
vnoremap <Plug>ZenCodingExpandVisual :call zencoding#expandAbbr(2,"")
nnoremap <Plug>ZenCodingAnchorizeSummary :call zencoding#anchorizeURL(1)
nnoremap <Plug>ZenCodingAnchorizeURL :call zencoding#anchorizeURL(0)
nnoremap <Plug>ZenCodingRemoveTag :call zencoding#removeTag()
nnoremap <Plug>ZenCodingSplitJoinTagNormal :call zencoding#splitJoinTag()
nnoremap <Plug>ZenCodingToggleComment :call zencoding#toggleComment()
nnoremap <Plug>ZenCodingImageSize :call zencoding#imageSize()
nnoremap <Plug>ZenCodingPrev :call zencoding#moveNextPrev(1)
nnoremap <Plug>ZenCodingNext :call zencoding#moveNextPrev(0)
nnoremap <Plug>ZenCodingBalanceTagOutwardNormal :call zencoding#balanceTag(-1)
nnoremap <Plug>ZenCodingBalanceTagInwardNormal :call zencoding#balanceTag(1)
nnoremap <Plug>ZenCodingExpandWord :call zencoding#expandAbbr(1,"")
nnoremap <Plug>ZenCodingExpandNormal :call zencoding#expandAbbr(3,"")
xnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("x", "Uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("n", "Uncomment")
xnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("x", "AlignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("n", "AlignBoth")
xnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("x", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("n", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAppend :call NERDComment("n", "Append")
xnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("x", "Yank")
nnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("n", "Yank")
xnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("x", "Sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("n", "Sexy")
xnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("x", "Invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("n", "Invert")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment("n", "ToEOL")
xnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("x", "Nested")
nnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("n", "Nested")
xnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("x", "Minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("n", "Minimal")
xnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("x", "Toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("n", "Toggle")
xnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("x", "Comment")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("n", "Comment")
vmap <C-Down> ]egv
vmap <C-Up> [egv
nmap <C-Down> ]e
nmap <C-Up> [e
xmap <BS> "-d
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <silent> 	 =TriggerSnippet()
cmap  =expand("%:p:h") . "/" 
inoremap <silent> 	 =ShowAvailableSnips()
imap  <Plug>Isurround
imap A <Plug>ZenCodingAnchorizeSummary
imap a <Plug>ZenCodingAnchorizeURL
imap k <Plug>ZenCodingRemoveTag
imap j <Plug>ZenCodingSplitJoinTagInsert
imap / <Plug>ZenCodingToggleComment
imap i <Plug>ZenCodingImageSize
imap N <Plug>ZenCodingPrev
imap n <Plug>ZenCodingNext
imap D <Plug>ZenCodingBalanceTagOutwardInsert
imap d <Plug>ZenCodingBalanceTagInwardInsert
imap ; <Plug>ZenCodingExpandWord
imap , <Plug>ZenCodingExpandAbbr
inoremap  =GetCloseTag()
imap ,=  =
cmap w!! %!sudo tee > /dev/null %
cnoreabbr WQ wq
cnoreabbr Wq wq
cnoreabbr Q q
cnoreabbr W w
let &cpo=s:cpo_save
unlet s:cpo_save
set autochdir
set autoindent
set autoread
set background=dark
set backspace=indent,eol,start
set backupdir=~/.vim/backup
set directory=~/.vim/backup
set noequalalways
set noesckeys
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set fuoptions=maxhorz,maxvert
set guifont=Source\ Code\ Pro:h18
set guioptions=egmrt
set guitablabel=%M%t
set helplang=en
set hlsearch
set ignorecase
set incsearch
set keymodel=startsel,stopsel
set langmenu=none
set laststatus=2
set listchars=tab:\ \ ,trail:·
set modelines=10
set mouse=a
set pastetoggle=<F8>
set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error
set ruler
set runtimepath=~/.vim,~/.vim/bundle/SearchComplete,~/.vim/bundle/ZoomWin,~/.vim/bundle/ack.vim,~/.vim/bundle/closetag.vim,~/.vim/bundle/emmet,~/.vim/bundle/jshint.vim,~/.vim/bundle/nerdcommenter,~/.vim/bundle/nerdtree,~/.vim/bundle/scss-syntax.vim,~/.vim/bundle/snipmate.vim,~/.vim/bundle/syntastic,~/.vim/bundle/vim-css3-syntax,~/.vim/bundle/vim-easymotion,~/.vim/bundle/vim-javascript,~/.vim/bundle/vim-matchit,~/.vim/bundle/vim-nerdtree-tabs,~/.vim/bundle/vim-paren-crosshairs,~/.vim/bundle/vim-session,~/.vim/bundle/vim-supertab,~/.vim/bundle/zencoding-vim,/Applications/MacVim.app/Contents/Resources/vim/vimfiles,/Applications/MacVim.app/Contents/Resources/vim/runtime,/Applications/MacVim.app/Contents/Resources/vim/vimfiles/after,~/.vim/bundle/snipmate.vim/after,~/.vim/bundle/vim-css3-syntax/after,~/.vim/after
set scrolloff=3
set selectmode=mouse,key
set shiftround
set shiftwidth=4
set showcmd
set smartcase
set softtabstop=4
set splitbelow
set splitright
set tabstop=4
set termencoding=utf-8
set undodir=./.vim-undo//,~/.vim/undo//
set undofile
set wildignore=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*
set wildmenu
set wildmode=list:longest,list:full
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /Volumes/Projects/Clients/WesleyBarrell/wesley-barrell.co.uk/CMS.Website/src/site/WesleyBarrell/resources/js
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 /Volumes/Projects/Clients/WesleyBarrell/wesley-barrell.co.uk/CMS.Website/src/site/WesleyBarrell/resources/js/main.js
args main.js
edit /Volumes/Projects/Clients/WesleyBarrell/wesley-barrell.co.uk/CMS.Website/src/site/WesleyBarrell/resources/js/main.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 86) / 172)
exe 'vert 2resize ' . ((&columns * 140 + 86) / 172)
argglobal
enew
file /Volumes/Projects/Clients/WesleyBarrell/wesley-barrell.co.uk/CMS.Website/src/site/WesleyBarrell/resources/js/NERD_tree_1
let s:cpo_save=&cpo
set cpo&vim
nnoremap <buffer> <silent> <NL> :call nerdtree#invokeKeyMap("<C-j>")
nnoremap <buffer> <silent>  :call nerdtree#invokeKeyMap("<C-k>")
nnoremap <buffer> <silent>  :call nerdtree#invokeKeyMap('o')
nnoremap <buffer> <silent> ? :call nerdtree#invokeKeyMap("?")
nnoremap <buffer> <silent> A :call nerdtree#invokeKeyMap("A")
nnoremap <buffer> <silent> B :call nerdtree#invokeKeyMap("B")
nnoremap <buffer> <silent> CD :call nerdtree#invokeKeyMap("CD")
nnoremap <buffer> <silent> C :call nerdtree#invokeKeyMap("C")
nnoremap <buffer> <silent> D :call nerdtree#invokeKeyMap("D")
nnoremap <buffer> <silent> F :call nerdtree#invokeKeyMap("F")
nnoremap <buffer> <silent> I :call nerdtree#invokeKeyMap("I")
nnoremap <buffer> <silent> J :call nerdtree#invokeKeyMap("J")
nnoremap <buffer> <silent> K :call nerdtree#invokeKeyMap("K")
nnoremap <buffer> <silent> O :call nerdtree#invokeKeyMap("O")
nnoremap <buffer> <silent> P :call nerdtree#invokeKeyMap("P")
nnoremap <buffer> <silent> R :call nerdtree#invokeKeyMap("R")
nnoremap <buffer> <silent> T :call nerdtree#invokeKeyMap("T")
nnoremap <buffer> <silent> U :call nerdtree#invokeKeyMap("U")
nnoremap <buffer> <silent> X :call nerdtree#invokeKeyMap("X")
nnoremap <buffer> <silent> cd :call nerdtree#invokeKeyMap("cd")
nnoremap <buffer> <silent> e :call nerdtree#invokeKeyMap("e")
nnoremap <buffer> <silent> f :call nerdtree#invokeKeyMap("f")
nnoremap <buffer> <silent> gi :call nerdtree#invokeKeyMap("gi")
nnoremap <buffer> <silent> gs :call nerdtree#invokeKeyMap("gs")
nnoremap <buffer> <silent> go :call nerdtree#invokeKeyMap("go")
nnoremap <buffer> <silent> i :call nerdtree#invokeKeyMap("i")
nnoremap <buffer> <silent> m :call nerdtree#invokeKeyMap("m")
nnoremap <buffer> <silent> o :call nerdtree#invokeKeyMap("o")
nnoremap <buffer> <silent> p :call nerdtree#invokeKeyMap("p")
nnoremap <buffer> <silent> q :call nerdtree#invokeKeyMap("q")
nnoremap <buffer> <silent> r :call nerdtree#invokeKeyMap("r")
nnoremap <buffer> <silent> s :call nerdtree#invokeKeyMap("s")
nnoremap <buffer> <silent> t :call nerdtree#invokeKeyMap("t")
nnoremap <buffer> <silent> u :call nerdtree#invokeKeyMap("u")
nnoremap <buffer> <silent> x :call nerdtree#invokeKeyMap("x")
nnoremap <buffer> <silent> <2-LeftMouse> :call nerdtree#invokeKeyMap("<2-LeftMouse>")
nnoremap <buffer> <silent> <LeftRelease> <LeftRelease>:call nerdtree#invokeKeyMap("<LeftRelease>")
nnoremap <buffer> <silent> <MiddleRelease> :call nerdtree#invokeKeyMap("<MiddleRelease>")
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=hide
setlocal nobuflisted
setlocal buftype=nofile
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'nerdtree'
setlocal filetype=nerdtree
endif
setlocal foldcolumn=0
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal nomodifiable
setlocal nrformats=octal,hex
set number
setlocal nonumber
set numberwidth=3
setlocal numberwidth=3
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%{exists('b:NERDTreeRoot')?b:NERDTreeRoot.path.str():''}
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'nerdtree'
setlocal syntax=nerdtree
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal nowinfixheight
setlocal winfixwidth
setlocal nowrap
setlocal wrapmargin=0
wincmd w
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
set cursorcolumn
setlocal cursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetJavascriptIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal nomacmeta
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
set numberwidth=3
setlocal numberwidth=3
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 11 - ((10 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 86) / 172)
exe 'vert 2resize ' . ((&columns * 140 + 86) / 172)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
