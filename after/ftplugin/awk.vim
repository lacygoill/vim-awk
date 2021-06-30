vim9script

# Options {{{1

&l:textwidth = 80

# Teardown {{{1

b:undo_ftplugin = get(b:, 'undo_ftplugin', 'execute')
    .. '| set textwidth<'

