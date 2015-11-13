
if has('win32')
    au GUIEnter * simalt ~x
endif

autocmd! bufwritepost .vimrc source %

" set filetype for pac file
autocmd! BufRead,BufNewFile *.pac set filetype=javascript

" for commentary.vim
autocmd FileType python,shell set commentstring=#\ %s

autocmd FileType unite call s:unite_my_settings()
    function! s:unite_my_settings() "{{{
        imap <buffer> jj      <Plug>(unite_insert_leave)
    endfunction "}}}

" {{{ for markdown syntax
autocmd FileType markdown |
      \hi def link markdownItalic              NONE |
      \hi def link markdownItalicDelimiter     NONE |
      \hi def link markdownBold                NONE |
      \hi def link markdownBoldDelimiter       NONE |
      \hi def link markdownBoldItalic          NONE |
      \hi def link markdownBoldItalicDelimiter NONE

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

"}}}
