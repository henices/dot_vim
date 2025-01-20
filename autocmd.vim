
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
"autocmd FileType unite call s:unite_my_settings()
"    function! s:unite_my_settings()
"        imap <buffer> jj      <Plug>(unite_insert_leave)
"    endfunction "}}}

" {{{ for markdown syntax
"autocmd FileType markdown |
"      \hi def link markdownItalic              NONE |
"      \hi def link markdownItalicDelimiter     NONE |
"      \hi def link markdownBold                NONE |
"      \hi def link markdownBoldDelimiter       NONE |
"      \hi def link markdownBoldItalic          NONE |
"      \hi def link markdownBoldItalicDelimiter NONE |
"      \hi def link markdownError               NONE |
"      \hi def link markdownEscape              NONE
"}}}

" {{{ Md2Txt

function! W2buf(job_id, data, event)
    " Get the buffer number for the new buffer
    let tempbuf_out = bufadd('Md2TxtOut')
    " Switch to the new buffer
    exec 'buffer' tempbuf_out
    " Append the data to the buffer
    call append(line('$'), a:data)
endfunction

function! Md2Txt()
    let tempbuf_in = tempname()
    w `=tempbuf_in`

    if has("nvim")
        call jobstart(['/usr/bin/pandoc', '-f', 'gfm', '-t', 'plain', tempbuf_in], {
            \ "on_stdout": function('W2buf')})
    else
        let tempbuf_out = tempname()
        call job_start('/usr/bin/pandoc -f gfm -t plain'. tempbuf_in, {
        \ 'out_io': 'buffer', 'out_name': tempbuf_out })
        new `=tempbuf_out`
    endif
endfunction

command! Md2t call Md2Txt()
" }}}

" {{{ Md2Html
function! Md2Html()
    let tempbuf_in = tempname()
    w `=tempbuf_in`

    if has("nvim")
        call jobstart(['/usr/bin/pandoc', '-s', '-f', 'gfm', '-t', 'html', tempbuf_in], {
            \ "on_stdout": function('W2buf')})
    else
        let tempbuf_out = tempname()
        call job_start("/usr/bin/pandoc -s -f gfm -t html " .
            \ tempbuf_in, {'out_io': 'buffer', 'out_name': tempbuf_out})

        new `=tempbuf_out`
        1delete
    endif

endfunction
" }}}

"{{{ Dn2Html
function! Dn2Html()
    exec 'syntax enable'
    exec 'syntax on'
    exec 'set bg=light'
    exec 'colorscheme PaperColor'
    exec 'TOhtml'
    exec 'buffer 2'
    exec '%s/.*font-family.*/* {font-family: "Droid Sans","Noto Sans","Helvetica Now Text","Helvetica Neue","Roboto","Helvetica","PingFang SC","Noto Sans SC","Source Han Sans SC","Microsoft YaHei","WenQuanYi Micro Hei",Arial,sans-serif; font-size: 16px;}/g'
    exec '%s/<span class="Constant">@\([0-9]\+\)<\/span>/<span class="Constant" id="\1">@\1<\/span>/g'
    exec '%s/<span class="String"> #@\([0-9]\+\)<\/span>/<span class="String"><a href="#\1" class="String">#@\1<\/a><\/span>/g'
    exec '8s/$/\rpre {word-wrap:break-word; white-space: pre-wrap; margin-left:.5em; margin-right: .5em}/g'
    exec 'w! dailynotes.html'
    exec 'qa!'
endfunction
" }}}

command! Md2h call Md2Html()
command! Dn2h call Dn2Html()
" }}}

" {{{ tagbar
nnoremap <silent> <F9> :TagbarToggle<CR>
" ]}}
