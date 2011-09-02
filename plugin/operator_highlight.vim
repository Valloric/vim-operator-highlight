if exists( 'g:loaded_operator_highlight' )
    finish
else
    let g:loaded_operator_highlight = 1
endif

if !exists( 'g:ophigh_color' )
    let g:ophigh_color = "cyan"
endif

fun! s:HighlightOperators()
    syntax match OperatorChars "+\|-\|\*\|;\|:\|,\|<\|>\|&\||\|!\|\~\|%\|=\|)\|(\|{\|}\|\.\|\[\|\]"
    exec "hi OperatorChars guifg=" . g:ophigh_color . " gui=NONE"
endfunction

au Syntax * call s:HighlightOperators()

