" syntax {{{1

" define a syntax group for commented code
syn region awkCommentCode matchgroup=Number start=/^\s*\zs#@\s\?/ end=/$/ concealends

syn region awkBackticks matchgroup=Comment start=/`/ end=/`/ oneline concealends

" replace noisy markers, used in folds, with ❭ and ❬
exe 'syn match awkFoldMarkers  /#\=\s*{'.'{{\d*\s*\ze\n/  conceal cchar=❭  containedin=awkComment'
exe 'syn match awkFoldMarkers  /#\=\s*}'.'}}\d*\s*\ze\n/  conceal cchar=❬  containedin=awkComment'

" by default, `awkTodo` only contains the keyword `TODO`
syn keyword awkTodo contained FIXME NOTE TODO XXX
"                   │
"                   └─ the group will be recognized only if it is mentioned
"                      in the "contains" field of another match; i.e.:
"
"                               syn … contains=awkTodo

" colors {{{1

hi link  awkCommentCode  Number
hi link  awkBackticks    Backticks

