" use vim by default
set nocompatible
filetype off


" vundle {{{

if has('win32')
    set rtp+=$VIM/vimfiles/bundle/vundle/
    call vundle#begin('$VIM/vimfiles/bundle/')
else
    set rtp+=~/.vim/bundle/vundle/
    call vundle#begin()
endif

Plugin 'VundleVim/Vundle.vim'
"}}}

" programming {{{
Plugin 'Lokaltog/vim-powerline'
Plugin 'tpope/vim-fugitive'
Plugin 'wesleyche/Trinity'
Plugin 'wesleyche/SrcExpl'
Plugin 'taglist.vim'
Plugin 'majutsushi/tagbar'
if has('unix') && system('uname') !~ "Darwin"
    Plugin 'fcitx.vim'
endif
Plugin 'utl.vim'
Plugin 'chrisbra/NrrwRgn'
Plugin 'Figlet.vim'
Plugin 'scrooloose/syntastic'
Plugin 'jnwhiteh/vim-golang'

if v:version > 703 || (v:version == 703 && has('patch584'))
    Plugin 'Valloric/YouCompleteMe'
endif

Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
Plugin 'vim-scripts/vcscommand.vim'
Plugin 'vim-scripts/SyntaxRange'
Plugin 'Shougo/unite-outline'
Plugin 'nvie/vim-flake8'
Plugin 'tell-k/vim-autopep8'
Plugin 'tpope/vim-commentary'
"}}}

" utils {{{
"Plugin 'farseer90718/unite-workflow'
Plugin 'mattn/webapi-vim'
"Plugin 'shime/vim-livedown'
Plugin 'suan/vim-instant-markdown'
"}}}

" unite {{{
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/unite.vim'
Plugin 'junkblocker/unite-tasklist'
Plugin 'kmnk/vim-unite-svn'
Plugin 'Shougo/neomru.vim'
Plugin 'henices/unite-stock'
"}}}

" perl regular expression {{{
Plugin 'othree/eregex.vim'
"}}}

"color scheme {{{
Plugin 'peaksea'
Plugin 'desert256.vim'
Plugin 'vim-scripts/tir_black'
Plugin 'vim-scripts/af.vim'
Plugin 'vim-scripts/enzyme.vim'
Plugin 'vim-scripts/tango.vim'
Plugin 'vim-scripts/BusyBee'
Plugin 'nanotech/jellybeans.vim'
Plugin 'w0ng/vim-hybrid'
Plugin 'twerth/ir_black'
Plugin 'tomasr/molokai'
Plugin 'sjl/badwolf'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'rainux/vim-desert-warm-256'
Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'
"}}}

" syntax {{{
Plugin 'vim-scripts/nasl.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'godlygeek/tabular'
Plugin 'henices/vim-nbin'
"}}}

" orgmode {{{
Plugin 'jceb/vim-orgmode'
Plugin 'tpope/vim-speeddating'
Plugin 'mattn/calendar-vim'
Plugin 'dhruvasagar/vim-table-mode'
" }}}

call vundle#end()

filetype plugin indent on

" vim: ts=4 sw=4 fdm=marker
