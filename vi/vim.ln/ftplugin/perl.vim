au BufRead,BufNewFile *.pl,*.pm set expandtab
au BufRead,BufNewFile *.pl,*.pm set shiftwidth=4
au BufRead,BufNewFile *.pl,*.pm set softtabstop=4
au BufRead,BufNewFile *.pl,*.pm set tabstop=4
 
au BufRead,BufNewFile *.tmpl,*.tt set expandtab
au BufRead,BufNewFile *.tmpl,*.tt set shiftwidth=4
au BufRead,BufNewFile *.tmpl,*.tt set softtabstop=4
au BufRead,BufNewFile *.tmpl,*.tt set tabstop=4
 
au BufRead,BufNewFile *.tt setf tt2html
 
" Show perldoc page instead on man when hitting K on a keyword
au FileType perl setlocal keywordprg=perldoc\ -f
 
map <F2> :w!<CR> :!./build.sh<CR>
map <F3> :Tlist<Return>
map <F4> :BufExplorer<CR>
 
" VimWiki
map <F5> \ww
map <F6> \w\w
 
" Toggle search highlighting
map <F7> :set hlsearch!<CR>
 
" perltidy a block of code
vmap <F8> :!perltidy -q<CR>
 
" \pm on perl module name to open the file in the current window
nnoremap <Leader>pm :call LoadPerlModule()<CR>
function! LoadPerlModule()
	execute 'e `perldoc -l ' . expand("<cWORD>"). '`'
endfunction
