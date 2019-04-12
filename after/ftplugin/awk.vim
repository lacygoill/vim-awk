" Mappings {{{1

nno  <buffer><nowait><silent>  K  :<c-u>call lg#man_k('awk')<cr>

" Options {{{1

setl tw=80

" Teardown {{{1

let b:undo_ftplugin = get(b:, 'undo_ftplugin', 'exe')
    \ . "
    \ | setl tw<
    \ | exe 'nunmap <buffer> K'
    \ "

