This is a simple plugin that highlights operator characters for every language.
I want characters like `+,-,/,*,.,:,=` etc. highlighted in every programming
language I write, so I wrote this simple script.

The default color for operator highlighting is cyan, but this can be changed by
setting a different value to the `g:ophigh_color` variable for terminal and
`g:ophigh_color_gui` variable for gui. For instance, adding
`let g:ophigh_color = 226` and `let g:ophigh_color_gui = "#F6FF00"` to your 
`vimrc` will highlight all operators with a bright yellow color.

You can also configure the plugin to ignore certain filetypes and thus not
highlight operators in them. This is done by adding a new key to the
`g:ophigh_filetypes_to_ignore` dictionary (with whatever value you want, only
the key needs to be present). For example:
`g:ophigh_filetypes_to_ignore.markdown = 1`.

If you add that to your vimrc, then markdown files will be ignored. NOTE: the
key needs to be the filetype, not the extension! You can get the filetype of the
current file in Vim with `:set filetype?`.

