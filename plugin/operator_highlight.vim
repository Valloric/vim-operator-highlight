if exists( 'g:loaded_operator_highlight' )
    finish
else
    let g:loaded_operator_highlight = 1
endif

if !exists( 'g:ophigh_color' )
    let g:ophigh_color = "cyan"
endif

if !exists( 'g:ophigh_filetypes_to_ignore' )
    " we don't want highlighting in vim's help files
    let g:ophigh_filetypes_to_ignore = { 'help': 1 }
elseif !has_key( g:ophigh_filetypes_to_ignore, 'help' )
    g:ophigh_filetypes_to_ignore[ 'help' ] = 1
endif

fun! s:HighlightOperators()
    if has_key( g:ophigh_filetypes_to_ignore, &filetype )
        return
    endif

    syntax match OperatorChars "+\|-\|\*\|;\|:\|,\|<\|>\|&\||\|!\|\~\|%\|=\|)\|(\|{\|}\|\.\|\[\|\]"
    exec "hi OperatorChars guifg=" . g:ophigh_color . " gui=NONE"
endfunction

au Syntax * call s:HighlightOperators()

