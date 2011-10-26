" Copyright (C) 2011 by Strahinja Markovic
" 
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
" 
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
" 
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.

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

