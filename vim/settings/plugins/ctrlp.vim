let g:ctrlp_custom_ignore = {
            \ 'dir': '\v[\/]\.(git|CMSDesk|CMSSiteManager|CMSSiteUtils|CMSFormControls|CMSAdminControls|CMSModules)$',
            \ 'file': '\v\.()$'
            \ }
let g:ctrlp_arg_map = 1
let g:ctrlp_working_path_mode = 'ra' " Smart path mode
let g:ctrlp_switch_buffer = 'et' " Jump to tab AND buffer if already open
let g:ctrlp_split_window = 1 " <CR> = New Tab
let g:ctrlp_lazy_update = 1

" Default to filename searches - so that appctrl will find application
" controller
let g:ctrlp_by_filename = 1

nnoremap <silent> <leader>t :CtrlPTag<CR>

" Additional mapping for buffer search
nnoremap <silent> <leader>b :CtrlPBuffer<cr>

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
    " Use Ag over Grep
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif
