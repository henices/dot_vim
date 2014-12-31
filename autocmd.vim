
if has('win32')
    au GUIEnter * simalt ~x
endif

autocmd! bufwritepost .vimrc source %

" set filetype for pac file
autocmd! BufRead,BufNewFile *.pac set filetype=javascript

" for SyntaxRange
if exists('g:loaded_SyntaxRange')
    autocmd Syntax * call SyntaxRange#Include('#+BEGIN_SRC c', '#+END_SRC', 'c')
    autocmd Syntax * call SyntaxRange#Include('#+BEGIN_SRC cpp', '#+END_SRC', 'cpp')
    autocmd Syntax * call SyntaxRange#Include('#+BEGIN_SRC python', '#+END_SRC', 'python')
    autocmd Syntax * call SyntaxRange#Include('#+BEGIN_SRC sh', '#+END_SRC', 'sh')
endif

" for commentary.vim
autocmd FileType python,shell set commentstring=#\ %s

autocmd FileType unite call s:unite_my_settings()
    function! s:unite_my_settings() "{{{
        imap <buffer> jj      <Plug>(unite_insert_leave)
    endfunction "}}}
