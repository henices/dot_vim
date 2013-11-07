" use vim by default
set nocompatible
filetype off


" vundle
if has('win32')
    set rtp+=$VIM/vimfiles/bundle/vundle/
    call vundle#rc('$VIM/vimfiles/bundle/')
else
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
endif

filetype plugin indent on

Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-fugitive'
Bundle 'tomasr/molokai'
Bundle 'wesleyche/Trinity'
Bundle 'wesleyche/SrcExpl'
Bundle 'klen/python-mode'
Bundle 'kien/ctrlp.vim'
Bundle 'taglist.vim'
Bundle 'majutsushi/tagbar'
Bundle 'fcitx.vim'
Bundle 'DoxygenToolkit.vim'
Bundle 'csharp.vim'
Bundle 'plasticboy/vim-markdown'
Bundle 'utl.vim'
Bundle 'NrrwRgn'
Bundle 'Figlet.vim'
Bundle 'mileszs/ack.vim'
Bundle "pangloss/vim-javascript"
Bundle "scrooloose/syntastic"
Bundle "davidhalter/jedi-vim"
Bundle "Valloric/YouCompleteMe"

"vimshell
Bundle "Shougo/vimshell.vim"
Bundle "Shougo/vimproc.vim"

"color scheme
Bundle 'peaksea'
Bundle 'desert256.vim'
Bundle 'vim-scripts/tir_black'
Bundle 'vim-scripts/af.vim'
Bundle 'vim-scripts/enzyme.vim'
Bundle 'vim-scripts/tango.vim'

" syntax
Bundle 'vim-scripts/nasl.vim'

" org
Bundle "jceb/vim-orgmode"
Bundle "tpope/vim-speeddating"

