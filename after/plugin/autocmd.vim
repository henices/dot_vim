
if exists('g:loaded_SyntaxRange')
    autocmd Syntax * call SyntaxRange#Include('@begin=c', '@end', 'c')
    autocmd Syntax * call SyntaxRange#Include('@begin=cpp', '@end', 'cpp')
    autocmd Syntax * call SyntaxRange#Include('@begin=python', '@end', 'python')
    autocmd Syntax * call SyntaxRange#Include('@begin=shell', '@end', 'sh')
    autocmd Syntax * call SyntaxRange#Include('@begin=java', '@end', 'java')
    autocmd Syntax * call SyntaxRange#Include('@begin=html', '@end', 'html')
endif
