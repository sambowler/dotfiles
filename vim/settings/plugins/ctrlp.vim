let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_arg_map = 1
let g:ctrlp_working_path_mode = 2 " Smart path mode
let g:ctrlp_mru_files = 1 " Enable Most Recently Used files feature
let g:ctrlp_jump_to_buffer = 2 " Jump to tab AND buffer if already open
let g:ctrlp_split_window = 1 " <CR> = New Tab

" Default to filename searches - so that appctrl will find application
" controller
let g:ctrlp_by_filename = 1

nnoremap <silent> <leader>t :CtrlPTag<CR>

" Additional mapping for buffer search
nnoremap <silent> <leader>b :CtrlPBuffer<cr>
