set guifont=Source\ Code\ Pro\ for\ Powerline:h13

" Line height
set linespace=1

if has("gui_macvim")
  " Tell the term has 256 colors
  set t_Co=256

  " Show tab number (useful for Cmd-1, Cmd-2.. mapping)
  " For some reason this doesn't work as a regular set command,
  " (the numbers don't show up) so I made it a VimEnter event
  autocmd VimEnter * set guitablabel=%N:\ %t\ %M
endif

color solarized

set background=dark
