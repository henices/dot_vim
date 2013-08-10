
if has('win32')
    au GUIEnter * simalt ~x
endif

autocmd! bufwritepost .vimrc source %
