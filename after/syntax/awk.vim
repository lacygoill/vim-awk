" Redefine the `awkParen` group to include our custom `awkComment` cluster.{{{
"
" The latter is defined in `lg#styled_comment#syntax()`:
"
"     ~/.vim/plugged/vim-lg-lib/autoload/lg/styled_comment.vim
"}}}
syn clear awkParen
syn region awkParen transparent start="(" end=")" contains=ALLBUT,awkParenError,awkSpecialCharacter,awkArrayElement,awkArrayArray,awkTodo,awkRegExp,awkBrktRegExp,awkBrackets,awkCharClass,awkComment,@awkMyCustomGroups

" Redefine the `awkComment` group to include our custom `awkCommentTitle` item.{{{
"
" The latter is defined in `lg#styled_comment#syntax()`:
"
"     ~/.vim/plugged/vim-lg-lib/autoload/lg/styled_comment.vim
"}}}
syn clear awkComment
syn match awkComment /#.*/ contains=@Spell,awkTodo,awkCommentTitle

