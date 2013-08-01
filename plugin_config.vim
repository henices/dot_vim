" cscope settings

if has("cscope")
  set csprg=/usr/bin/cscope
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  endif
  set csverb
endif

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" tagbar
if has('win32')
    let g:tagbar_ctags_bin='$VIMRUNTIME/ctags.exe'
else
    let g:tagbar_ctags_bin='/usr/bin/ctags'
endif

"let g:tagbar_right = 1

" // The switch of the Source Explorer 
nmap se :SrcExplToggle<CR> 

" // Set the height of Source Explorer window 
let g:SrcExpl_winHeight = 8

" // Set 100 ms for refreshing the Source Explorer 
let g:SrcExpl_refreshTime = 100 

" // Set "Enter" key to jump into the exact definition context 
" let g:SrcExpl_jumpKey = "<ENTER>" 

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

" TagList
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
if has('win32')
    let Tlist_Ctags_Cmd='$VIMRUNTIME/ctags.exe'
else
    let Tlist_Ctags_Cmd='/usr/bin/ctags'
endif


" winmanager

"let g:winManagerWindowLayout='FileExplorer|TagList'
"nmap wm :WMToggle<cr>

" use python to do caculate, need vim compiled with python support
if has("python")
    :command! -nargs=+ Calc :py print <args>
    :py from math import *
    " with python command support
    " command! -nargs=+ Calc :!python -c "from math import *; print <args>"
endif


" Powerline
set laststatus=2
set t_Co=256
let g:Powerline_symbols = "compatible"

" copy file name to clipborad
" The <leader> key is mapped to \
nnoremap <leader>yf :let @+=expand("%:t")<cr>:echo "Copy file name done"<cr>

" quickfix
nmap <leader>cp :cp<cr>
nmap <leader>cn :cn<cr>


" DoxygenToolkit
let g:DoxygenToolkit_briefTag_pre="@biref  "
let g:DoxygenToolkit_paramTag_pre="@param "
let g:DoxygenToolkit_returnTag="@return   "
let g:DoxygenToolkit_authorName="zz@nsfocus"

map <leader>f :Dox<cr>
map <leader>a :DoxAuthor<cr>
map <leader>b :DoxBlock<cr>


" vim-markdown
let g:vim_markdown_folding_disabled=1

" python-mode
"
" Load rope plugin
let g:pymode_rope = 1

"
"  Auto create and open ropeproject
let g:pymode_rope_auto_project = 1

" Enable autoimport
let g:pymode_rope_enable_autoimport = 1

" Disable pylint checking every save
let g:pymode_lint_write = 0

" Auto generate global cache
let g:pymode_rope_autoimport_generate = 1
let g:pymode_rope_autoimport_underlineds = 0
let g:pymode_rope_codeassist_maxfixes = 10
let g:pymode_rope_sorted_completions = 1
let g:pymode_rope_extended_complete = 1
let g:pymode_rope_autoimport_modules = ["os","shutil","datetime"]
let g:pymode_rope_confirm_saving = 1
let g:pymode_rope_global_prefix = "<C-x>p"
let g:pymode_rope_local_prefix = "<C-c>r"
let g:pymode_rope_vim_completion = 1
let g:pymode_rope_guess_project = 1
let g:pymode_rope_goto_def_newwin = ""
let g:pymode_rope_always_show_complete_menu = 1

" Enable python folding
let g:pymode_folding = 0

" vim-javascript
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" ctrlp
nmap ; :CtrlPBuffer<CR>
