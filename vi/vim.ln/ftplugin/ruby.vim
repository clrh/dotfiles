
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
autocmd FileType ruby compiler ruby
map <F2> :w!<CR> :!ruby %<CR>
