
if has('win32')
    au GUIEnter * simalt ~x
endif

autocmd! bufwritepost .vimrc source %

" set filetype for pac file
autocmd! BufRead,BufNewFile *.pac set filetype=javascript
autocmd Syntax * call SyntaxRange#Include('#+BEGIN_SRC c', '#+END_SRC', 'c')
