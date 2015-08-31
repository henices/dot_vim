
if has('win32')
    au GUIEnter * simalt ~x
endif

autocmd! bufwritepost .vimrc source %

augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" set filetype for pac file
autocmd! BufRead,BufNewFile *.pac set filetype=javascript

" for commentary.vim
autocmd FileType python,shell set commentstring=#\ %s

autocmd FileType unite call s:unite_my_settings()
    function! s:unite_my_settings() "{{{
        imap <buffer> jj      <Plug>(unite_insert_leave)
    endfunction "}}}
