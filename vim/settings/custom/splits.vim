" Easier split movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Resize splits when window is resized
au VimResized * exe "normal! \<c-w>="

" Open new splits to the right and below
set splitright splitbelow
