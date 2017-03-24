" windows control

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

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
