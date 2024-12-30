" by henices

if exists("g:neovide")
    " Put anything you want to happen only in Neovide here
    let g:neovide_cursor_animation_length = 0
    set guifont=Source\ Han\ Mono\ SC:h10
endif

source ~/.vim/plugins.vim
source ~/.vim/config.vim
source ~/.vim/autocmd.vim
source ~/.vim/bindings.vim
source ~/.vim/plugin_config.vim

lua << EOF
local neogit = require('neogit')
neogit.setup {}
EOF
