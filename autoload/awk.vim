fu! awk#fold_text() abort "{{{1
    let indent    = repeat(' ', (v:foldlevel-1)*3)
    let title     = substitute(getline(v:foldstart), '\v^\s*#\s*|\s*#?\{\{\{\d?', '', 'g')
    let title     = substitute(title, '\v^.*\zs\(\)\s*%(\{|\()', '', '')
    let foldsize  = (v:foldend - v:foldstart)
    let linecount = '['.foldsize.' line'.(foldsize>1?'s':'').']'

    if get(b:, 'my_title_full', 0)
        let foldsize  = (v:foldend - v:foldstart)
        let linecount = '['.foldsize.']'.repeat(' ', 4 - strchars(foldsize))
        return indent.' '.linecount.' '.title
    else
        return indent.' '.title
    endif
endfu

fu! awk#indent_awk() abort "{{{1
    let view = winsaveview()
    keepj norm! gg=G
    call winrestview(view)
endfu
