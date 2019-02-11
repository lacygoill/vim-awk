" Mappings {{{1

nno  <buffer><nowait><silent>  K  :<c-u>call lg#man_k('awk')<cr>

" Options {{{1

" For some reason, there's no default awk ftplugin.
" If there was one, it should be in `$VIMRUNTIME/ftplugin/`.
" But there's no `awk.vim` file there.
"
" So no commentstring. We define one ourselves.
setl cms=#%s

setl tw=80

" Teardown {{{1

let b:undo_ftplugin = get(b:, 'undo_ftplugin', '')
    \  . (empty(get(b:, 'undo_ftplugin', '')) ? '' : '|')
    \  . "
    \   setl cms< tw<
    \ | exe 'nunmap <buffer> K'
    \ "

