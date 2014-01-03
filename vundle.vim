" use vim by default
set nocompatible
filetype off


" vundle {{{

if has('win32')
    set rtp+=$VIM/vimfiles/bundle/vundle/
    call vundle#rc('$VIM/vimfiles/bundle/')
else
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
endif

Bundle 'gmarik/vundle'
"}}}

" programming {{{
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-fugitive'
Bundle 'wesleyche/Trinity'
Bundle 'wesleyche/SrcExpl'
Bundle 'klen/python-mode'
Bundle 'taglist.vim'
Bundle 'majutsushi/tagbar'
Bundle 'fcitx.vim'
Bundle 'DoxygenToolkit.vim'
Bundle 'utl.vim'
Bundle 'chrisbra/NrrwRgn'
Bundle 'Figlet.vim'
Bundle "scrooloose/syntastic"
Bundle "davidhalter/jedi-vim"
Bundle "Valloric/YouCompleteMe"
Bundle "maksimr/vim-jsbeautify"
"}}}

" utils {{{
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
"}}}

" vimshell {{{
Bundle "Shougo/vimshell.vim"
Bundle "Shougo/vimproc.vim"
Bundle "Shougo/unite.vim"
"}}}

" perl regular expression {{{
Bundle "othree/eregex.vim"
"}}}

"color scheme {{{
Bundle 'peaksea'
Bundle 'desert256.vim'
Bundle 'vim-scripts/tir_black'
Bundle 'vim-scripts/af.vim'
Bundle 'vim-scripts/enzyme.vim'
Bundle 'vim-scripts/tango.vim'
Bundle 'nanotech/jellybeans.vim'
Bundle 'twerth/ir_black'
Bundle 'tomasr/molokai'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'rainux/vim-desert-warm-256'
"}}}

" syntax {{{
Bundle 'vim-scripts/nasl.vim'
Bundle 'csharp.vim'
Bundle "pangloss/vim-javascript"
Bundle 'plasticboy/vim-markdown'
Bundle 'henices/vim-nbin'
"}}}

" orgmode {{{
Bundle 'jceb/vim-orgmode'
"Bundle 'hsitz/VimOrganizer'
Bundle 'hughbien/org-vim'
Bundle 'tpope/vim-speeddating'
Bundle 'mattn/calendar-vim'
" }}}

filetype plugin indent on

" vim: ts=4 sw=4 fdm=marker
