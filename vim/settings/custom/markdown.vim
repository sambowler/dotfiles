" md, markdown, and mk are markdown and define buffer-local preview
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()

" Turn on spell-checking in markdown and text.
au BufRead,BufNewFile *.md,*.txt setlocal spell
