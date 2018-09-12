
if has('win32')
    au GUIEnter * simalt ~x
endif

autocmd! bufwritepost .vimrc source %

" {{{set filetype
autocmd! BufRead,BufNewFile *.pac set filetype=javascript
autocmd! BufRead,BufNewFile *.pyx set filetype=python
" }}}


" for commentary.vim
autocmd FileType python,shell set commentstring=#\ %s

" shift the wrapped line another four spaces
autocmd FileType python set breakindentopt=shift:4

" {{{ unite
autocmd FileType unite call s:unite_my_settings()
    function! s:unite_my_settings()
        imap <buffer> jj      <Plug>(unite_insert_leave)
    endfunction "}}}

" {{{ for markdown syntax
autocmd FileType markdown |
      \hi def link markdownItalic              NONE |
      \hi def link markdownItalicDelimiter     NONE |
      \hi def link markdownBold                NONE |
      \hi def link markdownBoldDelimiter       NONE |
      \hi def link markdownBoldItalic          NONE |
      \hi def link markdownBoldItalicDelimiter NONE |
      \hi def link markdownError               NONE |
      \hi def link markdownEscape              NONE
"}}}

" {{{ Md2Txt
function! Md2Txt()
    let tempbuf_in = tempname()
    let tempbuf_out = tempname()

    w `=tempbuf_in`

    call job_start("/usr/local/bin/pandoc -f markdown_github -t plain " . 
        \ tempbuf_in, {'out_io': 'buffer', 'out_name': tempbuf_out})

    new `=tempbuf_out`

    1delete
endfunction

command! Md2t call Md2Txt()
" }}}

" {{{ Md2Html
function! Md2Html()
    let tempbuf_in = tempname()
    let tempbuf_out = tempname()

    w `=tempbuf_in`

    call job_start("/usr/local/bin/pandoc -s -f markdown_github -t html " . 
        \ tempbuf_in, {'out_io': 'buffer', 'out_name': tempbuf_out})

    new `=tempbuf_out`

    1delete
endfunction

command! Md2h call Md2Html()
" }}}

" {{{ tagbar
nnoremap <silent> <F9> :TagbarToggle<CR>
" ]}}
