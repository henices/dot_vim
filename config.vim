" .vimrc by henices

set autoread         "auto read when file modified
set go-=T
set showcmd
set noerrorbells
set visualbell
set history=1024
set nonu
set nobackup
set bs=2
set ttyfast

set scrolljump=5
set scrolloff=3

set title
set titleold=
set list

set fileformats=unix,dos,mac

" search settings
set hlsearch
set incsearch
set showmatch
set matchtime=2

" case settings
set ignorecase
set smartcase
set infercase

" folding
set foldenable
set foldmethod=marker

"encoding
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp936

if has('win32') || has('win64')
    set guifont=consolas:h10:cANSI
endif

if has('unix')
    if system('uname') =~ 'Darwin'
        set guifont=menlo:h14
    else
        set guifont=Fira\ Code\ Retina:h12
    endif
endif

if has('unix') && exists("g:neovide")
    set guifont=WenQuanYi\ Micro\ Hei\ Mono:h12
endif

" some windows shortcut support, such as ctrc a, ctrl c ...
" encoding
if has('win32') || has('win64')
    source $VIMRUNTIME/mswin.vim
    "behave mswin
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
    language messages zh_CN.utf-8
endif

if has('win32') || has('win64')
    set clipboard=unnamed
endif

if has('unix')
    if system('uname') =~ 'Darwin'
        set clipboard=unnamed "OSX
    else
        set clipboard=unnamedplus "Linux
    endif
endif

" Maximize gvim window, a little tricky
if has('gui_running')
  set lines=200 columns=200
endif

"set mouse=a

" for better coding style, 80 columns
if exists('+colorcolumn')
  set colorcolumn=100
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)
endif

"tab control
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set list listchars=tab:>-,trail:.,extends:>

set showbreak=..

"set color
set background=dark
set t_Co=256
"colors desert
"colors peaksea
"colors ps_color
"colors af
"colors desert-warm-256
"colorscheme jellybeans
"colors hybrid
"colors molokai
"colors gruvbox
"colors solarized
colors nord

" syntax color
syntax enable
syntax on

" ignore some file
set wildignore+=*.swp,*.so,*.exe

" faster response for fcitx
set ttimeoutlen=100
set completeopt+=longest,menuone
set completeopt-=preview
