
if has('win32')
    au GUIEnter * simalt ~x
endif

autocmd! bufwritepost .vimrc source %

" set filetype for pac file
autocmd! BufRead,BufNewFile *.pac set filetype=javascript
