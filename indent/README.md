# Where does this script come from?

<http://www.vim.org/scripts/script.php?script_id=4372>

# What does it do?

It defines  `GetAwkIndent()` and  uses it  to set the  indentation of  the lines
filtered by the `=` operator.

It sets the options `'indentexpr'` and `'indentkeys'`:

    setlocal indentexpr=GetAwkIndent()
    setlocal indentkeys=0{,0},:,!^F,o,O,e

# Why don't you use the default indent plugin?

`$VIMRUNTIME/indent/awk.vim`  hasn't  been  updated  in a  long  time,  and  the
resulting indentation is often wrong.

# How to configure the script?

The configuration relies on a set of global variables documented at the top of the script.

    Description:
                     let g:awk_indent_switch_labels = 0
                             switch (label) {
                             case /A/:

                     let g:awk_indent_switch_labels = 1
                             switch (label) {
                                 case /A/:
                                                       (default: 1, disable: -1)

                     let g:awk_indent_curly_braces = 0
                             if (brace)
                             {

                     let g:awk_indent_curly_braces = 1
                             if (brace)
                                 {
                                                       (default: 0)

                     let g:awk_indent_tail_bslash = 2
                             function_name(  \
                                           arg1, arg2, arg3)

                     let g:awk_indent_tail_bslash = -2
                             function_name(  \
                                 arg1, arg2, arg3)
                                                       (default: 2, disable: 0)

