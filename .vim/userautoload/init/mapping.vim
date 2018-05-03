let mapleader="\<Space>"
set backspace=indent,eol,start
inoremap ( ()<left>
inoremap { {}<left>
inoremap [ []<left>
inoremap <silent> jj <esc>
nnoremap <leader>w :w<cr>
nnoremap <leader>h :noh<cr>
nnoremap j gj
nnoremap k gk
nnoremap Y y$
nnoremap <C-]> g<C-]>
nnoremap <leader>e :ll<cr>zz
map <F5> :let &background = ( &background == "dark"? "light" : "dark" )<CR>
