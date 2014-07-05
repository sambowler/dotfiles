" This function takes current line of CSS code and converts
" HEX color code to RGBA and appends the new line after current one.
" http://pastebin.com/Pf9bYnvp
function! CSS_AppendHexToRGBA()
    let current_line = split(getline('.'), ' ')
    let new_line = []

    for param in current_line
        if param[0] == '#' && (strwidth(param) == 7 || strwidth(param) == 8)
            if strwidth(param) == 8
                let end_line = param[7]
            else
                let end_line = ''
            endif

            let r = str2nr(param[1:2], 16)
            let g = str2nr(param[3:4], 16)
            let b = str2nr(param[5:6], 16)

            call add(new_line, 'rgba('.r.', '.g.', '.b.', 1)'.end_line)
        else
            call add(new_line, param)
        endif
    endfor

    call append(line('.'), join(new_line))
endfunction
