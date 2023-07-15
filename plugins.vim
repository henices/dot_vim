" use vim by default
set nocompatible


" vim-plug {{{

if has('win32')
    call plug#begin('$VIM/vimfiles/bundle/')
else
    call plug#begin('~/.vim/bundle')
endif

"}}}

" programming {{{
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'wesleyche/Trinity'
Plug 'wesleyche/SrcExpl'
Plug 'majutsushi/tagbar'
if has('unix') && system('uname') !~ "Darwin"
    Plug 'lilydjwg/fcitx.vim' , { 'branch': 'fcitx5' }
endif
Plug 'vim-scripts/utl.vim'
Plug 'chrisbra/NrrwRgn'
Plug 'vim-scripts/Figlet.vim'
Plug 'vim-syntastic/syntastic'
Plug 'jnwhiteh/vim-golang'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'


if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
    Plug 'zchee/deoplete-jedi'
    Plug 'zchee/deoplete-clang'
else
    Plug 'ycm-core/YouCompleteMe', { 'do': 'python3 install.py --go-completer --clangd-completer' }
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'maksimr/vim-jsbeautify'
Plug 'einars/js-beautify'
Plug 'vim-scripts/vcscommand.vim'
Plug 'vim-scripts/SyntaxRange'
Plug 'Shougo/unite-outline'
"Plug 'nvie/vim-flake8'
"Plug 'tell-k/vim-autopep8'
Plug 'tpope/vim-commentary'
"}}}

" utils {{{
Plug 'farseer90718/unite-workflow'
Plug 'mattn/webapi-vim'
"Plug 'shime/vim-livedown'
"Plug 'suan/vim-instant-markdown'
"Plug 'drmikehenry/vim-fontsize'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
"Plug 'mhinz/vim-hugefile'
Plug 'mopp/unite-rss'
"Plug 'ashisha/image.vim'
"}}}

" unite {{{
Plug 'Shougo/vimshell.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Shougo/unite.vim'
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'devjoe/vim-codequery'
Plug 'junkblocker/unite-tasklist'
Plug 'kmnk/vim-unite-svn'
Plug 'Shougo/neomru.vim'
if has('nvim')
    Plug 'henices/denite-stock'
else
    Plug 'henices/unite-stock'
endif
"}}}

" perl regular expression {{{
Plug 'othree/eregex.vim'
"}}}

"color scheme {{{
Plug 'vim-scripts/peaksea'
Plug 'vim-scripts/desert256.vim'
Plug 'vim-scripts/tir_black'
Plug 'vim-scripts/af.vim'
Plug 'vim-scripts/enzyme.vim'
Plug 'vim-scripts/tango.vim'
Plug 'vim-scripts/BusyBee'
Plug 'nanotech/jellybeans.vim'
Plug 'w0ng/vim-hybrid'
Plug 'twerth/ir_black'
Plug 'tomasr/molokai'
Plug 'sjl/badwolf'
Plug 'Lokaltog/vim-distinguished'
Plug 'rainux/vim-desert-warm-256'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'nordtheme/vim'
"}}}

" syntax {{{
Plug 'vim-scripts/nasl.vim'
Plug 'pangloss/vim-javascript'
Plug 'henices/vim-nbin'
Plug 'henices/llvm.vim'
"}}}

" orgmode {{{
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-speeddating'
Plug 'mattn/calendar-vim'
Plug 'dhruvasagar/vim-table-mode'
" }}}

Plug 'equalsraf/neovim-gui-shim'

call plug#end()

" vim: ts=4 sw=4 fdm=marker
