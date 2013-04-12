" .vimrc by henices

" auto read when file modified
set autoread
" no button, cool
"set go=
"set shortmess=atl
set showcmd
set noerrorbells
"set visualbell
set history=1024
set nonu
set nobackup

set scrolljump=5
set scrolloff=3

set title
set list

" filetype and format
filetype plugin indent on
autocmd BufReadPost *.nasl set filetype=nasl


set formatoptions=ctqmM

" some windows shortcut support, such as ctrc a, ctrl c ...
if has('win32')
    source $VIMRUNTIME/mswin.vim
    behave mswin
endif
 
" search settings
set nohlsearch
set incsearch

set showmatch
set matchtime=2

" case settings
set ignorecase
set smartcase

" Allow folding to play nice with Python and other well-indented code
"set foldmethod=indent
" Don't close all folds by default when file opens
"set nofoldenable

"encoding
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp936

" avoid \r\n  windows format
set ff=unix

set guifont=文泉驿等宽微米黑\ 11
set guifontwide=文泉驿等宽微米黑\ 11

set clipboard=unnamed " use os clipboard, Not need "+

"set mouse=a

" for better coding style, 80 columns
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

"tab control
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set list listchars=tab:>-,trail:.,extends:>


"set color
set background=dark
"colors desert
"colors peaksea
"colors ps_color
"colors af
colors desert256
"colors molokai


" syntax color
syntax enable
syntax on

set foldenable
set showmatch


