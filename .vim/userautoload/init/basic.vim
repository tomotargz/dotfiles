" View -------------------------------------------------------------------------

set nowrap
set visualbell t_vb=
set smartindent
set laststatus=2
set colorcolumn=80

" Change cursor shape for each mode
let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"

" Tab attributes ---------------------------------------------------------------

set smarttab
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Search -----------------------------------------------------------------------

set hlsearch
set incsearch
set smartcase
set ignorecase

" Temporary files --------------------------------------------------------------

set nobackup
set noundofile
set noswapfile

" Configuration for each file type ---------------------------------------------

augroup markdown
    autocmd!
    autocmd BufNewFile,BufRead *.md :set filetype=markdown
    autocmd FileType markdown setlocal wrap
augroup END

augroup twoSpace
    autocmd!
    autocmd FileType c,cpp,yaml setlocal shiftwidth=2 tabstop=2 softtabstop=2
augroup END

augroup useTab
    au FileType make setlocal noexpandtab tabstop=4
augroup END


" Other ------------------------------------------------------------------------

" Allow a buffer be changed even if there is any other unsaved buffer
set hidden

" Share clipboard with OS
set clipboard+=unnamed

" Improve the response of escape key
set ttimeoutlen=10

" Backspace
set backspace=indent,eol,start

" Enable termdebug
packadd termdebug
