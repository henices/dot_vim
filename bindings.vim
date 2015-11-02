" windows control
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-H> <C-W>h
map <C-L> <C-W>l

nmap <C-E> :e#<CR>

" tab control
nmap <F11> :tabp<CR>
nmap <F12> :tabn<CR>

" last edit position
nmap <C-B> '.

let mapleader = ","
let maplocalleader = ","

nmap <Leader>bp :bp<CR>
nmap <Leader>bn :bn<CR>

" copy file name to clipborad
" The <leader> key is mapped to \
nnoremap <leader>yf :let @+=expand("%:t")<cr>:echo "Copy file name done"<cr>

" quickfix
nmap <leader>cp :cp<cr>
nmap <leader>cn :cn<cr>
