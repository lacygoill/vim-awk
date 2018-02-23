" syntax {{{1

" Redefine the `awkComment` group, because we want to conceal the comment leader.
"
" Originally:
"         syn match awkComment /#.*/ contains=@Spell,awkTodo
syn region awkComment matchgroup=Comment start=/^\s*\zs#@\@!\s\?/ end=/$/ concealends contains=@Spell,awkTodo

" define a syntax group for commented code
syn region awkCommentCode matchgroup=Number start=/^\s*\zs#@\s\?/ end=/$/ concealends

syn region awkBackticks matchgroup=Comment start=/`/ end=/`/ oneline concealends containedin=awkComment

" replace noisy markers, used in folds, with ❭ and ❬
exe 'syn match awkFoldMarkers  /\s*{'.'{{\d*\s*\ze\n/  conceal cchar=❭  containedin=awkComment'
exe 'syn match awkFoldMarkers  /\s*}'.'}}\d*\s*\ze\n/  conceal cchar=❬  containedin=awkComment'

" by default, `awkTodo` only contains the keyword `TODO`
syn keyword awkTodo contained FIXME NOTE TODO XXX
"                   │
"                   └─ the group will be recognized only if it is mentioned
"                      in the "contains" field of another match; i.e.:
"
"                               syn … contains=awkTodo

" colors {{{1

hi link  awkComment      Comment
hi link  awkCommentCode  Number
hi link  awkBackticks    Backticks
