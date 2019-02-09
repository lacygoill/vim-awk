if exists('g:loaded_awk')
    finish
endif
let g:loaded_awk = 1

" These options control how the `=` operator indent lines.
" For more info, see read the top of the script at `./indent/awk.vim`.

"     let g:awk_indent_switch_labels = 0{{{
"             switch (label) {
"             case /A/:
"
"     let g:awk_indent_switch_labels = 1
"             switch (label) {
"                 case /A/:
"                                      (default: 1, disable: -1)
"}}}
let g:awk_indent_switch_labels = 1

"     let g:awk_indent_curly_braces = 0{{{
"             if (brace)
"             {
"
"     let g:awk_indent_curly_braces = 1
"             if (brace)
"                 {
"                                       (default: 0)
"}}}
let g:awk_indent_curly_braces = 1

"     let g:awk_indent_tail_bslash = 2{{{
"
"             function_name(  \
"                           arg1, arg2, arg3)

"     let g:awk_indent_tail_bslash = -2
"
"             function_name(  \
"                 arg1, arg2, arg3)
"                                       (default: 2, disable: 0)
"}}}
let g:awk_indent_tail_bslash = -2

