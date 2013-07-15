" by henices

if has('win32')
    source $VIM/vimfiles/vundle.vim
    source $VIM/vimfiles/config.vim
    source $VIM/vimfiles/bindings.vim
    source $VIM/vimfiles/plugin_config.vim
else
    source ~/.vim/vundle.vim
    source ~/.vim/config.vim
    source ~/.vim/bindings.vim
    source ~/.vim/plugin_config.vim
endif

