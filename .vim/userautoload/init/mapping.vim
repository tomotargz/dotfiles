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
nnoremap <S-Left>  <C-w><<CR>
nnoremap <S-Right> <C-w>><CR>
nnoremap <S-Up>    <C-w>-<CR>
nnoremap <S-Down>  <C-w>+<CR>

map <F5> :let &background = ( &background == "dark"? "light" : "dark" )<CR>
