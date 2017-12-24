fu! awk#indent_awk() abort "{{{1
    let view = winsaveview()
    keepj norm! gg=G
    call winrestview(view)
endfu
