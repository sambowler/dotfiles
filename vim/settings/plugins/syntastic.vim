"mark syntax errors with :signs
let g:syntastic_enable_signs=1

"automatically jump to the error when saving the file
let g:syntastic_auto_jump=0

"show the error list automatically
let g:syntastic_auto_loc_list=1

"don't care about warnings
let g:syntastic_quiet_messages = {'level': 'warnings'}

let g:statusline_syntastic = 1
let g:syntastic_enable_signs = 1
let g:syntastic_loc_list_height = 7

let g:syntastic_ignore_files = ['.ascx', '.aspx', '.aspx.src', '.master', '.ascx.cs', '.ejs', '.html', '.hbs']
