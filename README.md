This is a simple plugin that highlights operator characters for every language. I want
characters like `+,-,/,*` etc. highlighted in every programming language I
write, so I wrote this simple script.

The default color for operator highlighting is cyan, but this can be changed by
setting a different value to the `g:ophigh_color` variable. For instance, adding
`let g:ophigh_color = "#F6FF00"` to your `vimrc` will highlight all operators in
a bright yellow color.

