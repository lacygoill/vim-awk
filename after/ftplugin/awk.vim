" Options {{{1

setl tw=80

" Teardown {{{1

let b:undo_ftplugin = get(b:, 'undo_ftplugin', 'exe')
    \ .."| setl tw<"

