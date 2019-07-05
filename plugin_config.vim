"{{{ cscope settings

"if has("cscope")
"    set csprg=/usr/bin/cscope
"    set csto=1
"    set cscopetag
"    set nocsverb
"    " add any database in current directory
"    if filereadable("cscope.out")
"        cs add cscope.out
"    elseif $CSCOPE_DB != ""
"        cs add $CSCOPE_DB
"    endif
"    set csverb
"endif

if has("cscope")
    set csprg=/usr/bin/gtags-cscope
    set csto=1
    set cscopetag
    set nocsverb
    " add any database in current directory
    if filereadable("GTAGS")
        cs add GTAGS
    endif
    set csverb
endif


" To do the first type of search, hit 'CTRL-\', followed by one of the
" cscope search types above (s,g,c,t,e,f,i,d).  The result of your cscope
" search will be displayed in the current window.  You can use CTRL-T to
" go back to where you were before the search.  

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" Using 'CTRL-spacebar' (intepreted as CTRL-@ by vim) then a search type
" makes the vim window split horizontally, with search result displayed in
" the new window.
"
" (Note: earlier versions of vim may not have the :scs command, but it
" can be simulated roughly via:
"    nmap <C-@>s <C-W><C-S> :cs find s <C-R>=expand("<cword>")<CR><CR>

nmap <C-]>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-]>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-]>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-]>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-]>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-]>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-]>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-]>d :scs find d <C-R>=expand("<cword>")<CR><CR>

" Hitting CTRL-space *twice* before the search type does a vertical 
" split instead of a horizontal one (vim 6 and up only)
"
" (Note: you may wish to put a 'set splitright' in your .vimrc
" if you prefer the new window on the right instead of the left

nmap <C-]><C-]>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-]><C-]>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-]><C-]>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-]><C-]>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-]><C-]>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-]><C-]>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-]><C-]>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-]><C-]>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>
"}}}

"{{{ tagbar
if has('win32') || has('win64')
    let g:tagbar_ctags_bin='$VIMRUNTIME/ctags.exe'
else
    if system('uname') =~ 'Darwin'
        let g:tagbar_ctats_bin='/usr/local/bin/ctags'
    else
        let g:tagbar_ctags_bin='/usr/bin/ctags'
    endif
endif

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

"let g:tagbar_right = 1
"}}}

"{{{ SrcExplorer

" // The switch of the Source Explorer 
nmap se :SrcExplToggle<CR> 

" // Set the height of Source Explorer window 
let g:SrcExpl_winHeight = 20

" // Set 100 ms for refreshing the Source Explorer 
let g:SrcExpl_refreshTime = 100 

" // Set "Enter" key to jump into the exact definition context 
let g:SrcExpl_jumpKey = '<CR>'

" // Set "Space" key for back from the definition context 
let g:SrcExpl_gobackKey = "<SPACE>" 

" // In order to Avoid conflicts, the Source Explorer should know what plugins 
" // are using buffers. And you need add their bufname into the list below 
" // according to the command ":buffers!" 
let g:SrcExpl_pluginList = [
        \ "__Tag_List__",
        \ "_NERD_tree_",
        \ "Source_Explorer"
    \ ] 

" // Enable/Disable the local definition searching, and note that this is not 
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. 
" // It only searches for a match with the keyword according to command 'gd' 
let g:SrcExpl_searchLocalDef = 1 

" // Do not let the Source Explorer update the tags file when opening 
let g:SrcExpl_isUpdateTags = 0 

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to 
" //  create/update a tags file 
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ." 

" // Set "<F12>" key for updating the tags file artificially 
let g:SrcExpl_updateTagsKey = "<F12>" 
"}}}

"{{{ TagList
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
if has('win32')
    let Tlist_Ctags_Cmd='$VIMRUNTIME/ctags.exe'
else
    let Tlist_Ctags_Cmd='/usr/bin/ctags'
endif
"}}}

"{{{ winmanager

"let g:winManagerWindowLayout='FileExplorer|TagList'
"nmap wm :WMToggle<cr>
"}}}

"{{{ Powerline
set laststatus=2
set t_Co=256
let g:Powerline_symbols = "compatible"
"}}}

"{{{ vim-javascript
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
"}}}

"{{{ YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
nnoremap <leader>jd :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>jD :YcmCompleter GoToDefinition<CR>
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_keep_logfiles = 0
let g:ycm_server_log_level = 'debug'
let g:ycm_server_python_interpreter = '/usr/bin/python3'
"}}}

"{{{ vim-orgmode
au BufRead,BufNewFile *.org set nowrap
"}}}

"{{{ Unite.vim
"nnoremap <leader>fr :<C-u>Unite -start-insert file_rec/async<CR>
"nnoremap <leader>fn :<C-u>Unite -start-insert file/new<CR>
"nnoremap <leader>fb :<C-u>Unite buffer<CR>
"nnoremap <leader>qb :<C-u>Unite -quick-match buffer<CR>
"
"nnoremap <leader>ss :<C-u>Unite -start-insert svn/status<CR>
"}}}

"{{{ Denite.nvim
"call denite#custom#option('default', 'winheight', 25)
let g:python_host_prog="/usr/bin/python3"

" Define mappings
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction

" Change file/rec command.
call denite#custom#var('file/rec', 'command',
\ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])

nnoremap <leader>fr :<C-u>Denite file/rec<CR>
nnoremap <leader>sb :<C-u>Denite buffer<CR>

" Ag command on grep source
call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_opts',
        \ ['-i', '--vimgrep'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])
"}}}

"{{{ For ack.
if executable('ack-grep')
    let g:unite_source_grep_command = 'ack-grep'
    let g:unite_source_grep_default_opts = '-i --no-heading --no-color -k -H'
    let g:unite_source_grep_recursive_opt = ''
endif
"}}}

"{{{ vim-jsbeautify
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
"}}}

"{{{ for syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_write = 0

let g:syntastic_python_python_exec = '/usr/bin/python3'
let g:syntastic_python_checkers = ['pyflakes']
"}}}

"{{{ utl.vim
if !exists("g:utl_cfg_hdl_scm_http_system")
    let g:utl_cfg_hdl_scm_http_system="silent !/usr/bin/google-chrome-unstable '%u#%f'"
endif
"}}}

"{{{vim-livedown

" should markdown preview get shown automatically upon opening markdown buffer
let g:livedown_autorun = 1

" should the browser window pop-up upon previewing
let g:livedown_open = 1 
"
" the port on which Livedown server will run
let g:livedown_port = 9090
"}}}

"{{{ gruvbox
let g:gruvbox_contrast_dark = 'hard'
"}}}

" {{{ markdown
let g:markdown_fenced_languages = ['diff=diff', 'html=html', 'java=java', 'bash=sh', 'viml=vim', 'python=python', 'xml=xml', 'perl=perl', 'c=c', 'cpp=cpp', 'asm=asm', 'make=make']
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_folding_level = 2

"}}}

" {{{ vim table mode

let g:table_mode_corner="|"

" }}}

" {{{ vim-hugefile
let g:hugefile_trigger_size=10
" }}}

" {{{ jellybeans.vim
let g:jellybeans_use_lowcolor_black = 0
"}}}

" {{{ Use deoplete.
"
" Use deoplete.
let g:deoplete#enable_at_startup = 1
" Use smartcase.
let g:deoplete#enable_smart_case = 1

inoremap <silent><expr> <TAB>
\ pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<TAB>" :
\ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

" }}}

" {{{ deoplete-clang
let g:deoplete#sources#clang#libclang_path = '/usr/lib64/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/lib64/clang'
" }}}

" {{{deoplete
let g:deoplete#sources#jedi#python_path = "/usr/bin/python3"
"}}}
