"{{{ cscope settings

" GNU Global Source Code Tag System (gtags) is better than ctags
" Use :GtagsCscope to manual load GTAGS

"if has("cscope")
"" To use the default key/mouse mapping:
"    let GtagsCscope_Auto_Map = 1
"" To ignore letter case when searching:
""   let GtagsCscope_Ignore_Case = 1
"" To use absolute path name:
""   let GtagsCscope_Absolute_Path = 1
"" To deterring interruption:
"    let GtagsCscope_Keep_Alive = 1
"" If you hope auto loading:
""    let GtagsCscope_Auto_Load = 1
"" To use 'vim -t ', ':tag' and '<C-]>'
"    set cscopetag
"
"    if has('unix')
"        if system('uname') =~ 'Darwin'
"            set csprg=/usr/local/bin/gtags-cscope
"        else
"            set csprg=/usr/bin/gtags-cscope
"        endif
"    endif
"
"    set csto=1
"    set nocsverb
"
"" Set enviroment values
"    let $GTAGSLABEL='native-pygments'
"
"endif

"}}}

"{{{ tagbar
"if has('win32') || has('win64')
"    let g:tagbar_ctags_bin='$VIMRUNTIME/ctags.exe'
"else
"    if system('uname') =~ 'Darwin'
"        let g:tagbar_ctats_bin='/usr/local/bin/ctags'
"    else
"        let g:tagbar_ctags_bin='/usr/bin/ctags'
"    endif
"endif
"
"let g:tagbar_type_go = {
"    \ 'ctagstype' : 'go',
"    \ 'kinds'     : [
"        \ 'p:package',
"        \ 'i:imports:1',
"        \ 'c:constants',
"        \ 'v:variables',
"        \ 't:types',
"        \ 'n:interfaces',
"        \ 'w:fields',
"        \ 'e:embedded',
"        \ 'm:methods',
"        \ 'r:constructor',
"        \ 'f:functions'
"    \ ],
"    \ 'sro' : '.',
"    \ 'kind2scope' : {
"        \ 't' : 'ctype',
"        \ 'n' : 'ntype'
"    \ },
"    \ 'scope2kind' : {
"        \ 'ctype' : 't',
"        \ 'ntype' : 'n'
"    \ },
"    \ 'ctagsbin'  : 'gotags',
"    \ 'ctagsargs' : '-sort -silent'
"\ }

"let g:tagbar_right = 1
"}}}

"{{{ SrcExplorer

"" // The switch of the Source Explorer
"nmap se :SrcExplToggle<CR>
"
"" // Set the height of Source Explorer window
"let g:SrcExpl_winHeight = 20
"
"" // Set 100 ms for refreshing the Source Explorer
"let g:SrcExpl_refreshTime = 100 
"
"" // Set "Enter" key to jump into the exact definition context
"let g:SrcExpl_jumpKey = '<CR>'
"
"" // Set "Space" key for back from the definition context
"let g:SrcExpl_gobackKey = "<SPACE>" 
"
"" // In order to Avoid conflicts, the Source Explorer should know what plugins
"" // are using buffers. And you need add their bufname into the list below
"" // according to the command ":buffers!"
"let g:SrcExpl_pluginList = [
"        \ "__Tag_List__",
"        \ "_NERD_tree_",
"        \ "Source_Explorer"
"    \ ] 
"
"" // Enable/Disable the local definition searching, and note that this is not
"" // guaranteed to work, the Source Explorer doesn't check the syntax for now.
"" // It only searches for a match with the keyword according to command 'gd'
"let g:SrcExpl_searchLocalDef = 1
"
"" // Do not let the Source Explorer update the tags file when opening
"let g:SrcExpl_isUpdateTags = 0
"
"" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to
"" //  create/update a tags file 
"let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."
"
"" // Set "<F12>" key for updating the tags file artificially
"let g:SrcExpl_updateTagsKey = "<F12>"
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
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
nnoremap <leader>jd :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>jD :YcmCompleter GoToDefinition<CR>
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_keep_logfiles = 0
let g:ycm_server_log_level = 'debug'
if has('unix')
    if system('uname') =~ 'Darwin'
        let g:ycm_server_python_interpreter = '/usr/local/bin/python3'
    else
        let g:ycm_server_python_interpreter = '/usr/bin/python3'
    endif
endif
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
"let g:python_host_prog="/usr/bin/python3"
"
"" Define mappings
"autocmd FileType denite call s:denite_my_settings()
"function! s:denite_my_settings() abort
"  nnoremap <silent><buffer><expr> <CR>
"  \ denite#do_map('do_action')
"  nnoremap <silent><buffer><expr> d
"  \ denite#do_map('do_action', 'delete')
"  nnoremap <silent><buffer><expr> p
"  \ denite#do_map('do_action', 'preview')
"  nnoremap <silent><buffer><expr> q
"  \ denite#do_map('quit')
"  nnoremap <silent><buffer><expr> i
"  \ denite#do_map('open_filter_buffer')
"  nnoremap <silent><buffer><expr> <Space>
"  \ denite#do_map('toggle_select').'j'
"endfunction
"
"" Change file/rec command.
"call denite#custom#var('file/rec', 'command',
"\ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
"
"nnoremap <leader>fr :<C-u>Denite file/rec<CR>
"nnoremap <leader>sb :<C-u>Denite buffer<CR>
"
"" Ag command on grep source
"call denite#custom#var('grep', 'command', ['ag'])
"call denite#custom#var('grep', 'default_opts',
"        \ ['-i', '--vimgrep'])
"call denite#custom#var('grep', 'recursive_opts', [])
"call denite#custom#var('grep', 'pattern_opt', [])
"call denite#custom#var('grep', 'separator', ['--'])
"call denite#custom#var('grep', 'final_opts', [])
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
"if has('nvim')
"    let g:deoplete#enable_at_startup = 1
"    " Use smartcase.
"    call deoplete#custom#option('smart_case', v:true)
"
"    inoremap <silent><expr> <TAB>
"    \ pumvisible() ? "\<C-n>" :
"    \ <SID>check_back_space() ? "\<TAB>" :
"    \ deoplete#mappings#manual_complete()
"endif
"function! s:check_back_space() abort "{{{
"let col = col('.') - 1
"return !col || getline('.')[col - 1]  =~ '\s'
"endfunction"}}}
"
"" }}}
"
"" {{{ deoplete-clang
"let g:deoplete#sources#clang#libclang_path = '/usr/lib64/libclang.so'
"let g:deoplete#sources#clang#clang_header = '/usr/lib64/clang'
"" }}}

" {{{deoplete
"let g:deoplete#sources#jedi#python_path = "/usr/bin/python3"
"}}}

" {{{ fzf.vim
let g:fzf_layout = { 'down': '40%' }
" }}}

"{{{ LeaderF
let g:Lf_WorkingDirectoryMode = 'AF'
let g:Lf_RootMarkers = ['.git', '.svn', '.hg', '.project', '.root']
let g:Lf_DefaultExternalTool='rg'
let g:Lf_WindowPosition = 'popup'

let g:Lf_UseCache = 0
let g:Lf_PreviewInPopup = 1
"let g:Lf_CacheDirectory = s:cachedir
let g:Lf_PopupPreviewPosition='top'
let g:Lf_ShowHidden = 1  "show hidden files
let g:Lf_PopupWidth = 0.75
let g:Lf_PythonVersion = 3

let g:Lf_WildIgnore = {
\ 'dir': ['.svn','.git','.hg'],
\ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
\}

nmap <unique> <leader>frb <Plug>LeaderfRgCwordLiteralBoundary

"let g:Lf_ShortcutF = '<c-p>'

" preview or not
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }

noremap <leader>fs :LeaderfSelf<cr>
noremap <leader>fm :LeaderfMru<cr>
noremap <leader>ff :LeaderfFunction<cr>
noremap <leader>fb :LeaderfBuffer<cr>
noremap <leader>ft :LeaderfBufTag<cr>
noremap <leader>fl :LeaderfLine<cr>
noremap <leader>fw :LeaderfWindow<cr>

let $GTAGSLABEL='native-pygments'

let global_paths = ['/usr/local/bin/global', '/usr/bin/global']
let gtags_paths = ['/usr/local/bin/gtags', '/usr/bin/gtags']

for global_path in global_paths
    if !empty(glob(global_path))
        let g:Lf_Global = global_path
    endif
endfor

for gtags_path in gtags_paths
    if !empty(glob(gtags_path))
        let g:Lf_Gtags = gtags_path
    endif
endfor

let gtags_confs = ['/etc/gtags.conf', '/etc/gtags/gtags.conf', '/usr/local/share/gtags/gtags.conf']

for gtags_conf in gtags_confs
    if !empty(glob(gtags_conf))
        let $GTAGSCONF= gtags_conf
        let g:Lf_Gtagsconf = gtags_conf
    endif
endfor

let g:Lf_GtagsSource = 2
let g:Lf_GtagsAutoGenerate = 1
let g:Lf_GtagsAutoUpdate = 1
let g:Lf_Gtagslabel = 'native-pygments'

nmap <unique> <leader>fr <Plug>LeaderfRgPrompt

nmap <leader>fgd <Plug>LeaderfGtagsDefinition
nmap <leader>fgr <Plug>LeaderfGtagsReference
nmap <leader>fgs <Plug>LeaderfGtagsSymbol
nmap <leader>fgg <Plug>LeaderfGtagsGrep

noremap <leader>fgo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
noremap <leader>fgn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <leader>fgp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>

"}}}

"{{{ ale

let g:ale_set_highlights = 0
let g:ale_completion_enabled = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_insert_leave = 0
let g:ale_set_signs = 0
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_echo_cursor = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:airline#extensions#ale#enabled = 1
let g:ale_virtualtext_cursor=0
let g:ale_python_pylint_executable = "pylint"
let g:ale_python_pylint_options = "--rcfile ~/.pylintrc"
"let g:ale_floating_preview = 1

let g:ale_linters = {
\   'c++': ['clang'],
\   'c': ['clang'],
\   'python': ['pylint'],
\}

let g:ale_fixers = {
\   'c': ['clang-format'],
\   'cpp': ['clang-format']
\}

nmap <leader>sp <Plug>(ale_previous_wrap)
nmap <leader>sn <Plug>(ale_next_wrap)

"}}}
