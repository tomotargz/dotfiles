" View -------------------------------------------------------------------------

set nowrap
set visualbell t_vb=
set smartindent
set laststatus=2
set colorcolumn=80

" Change cursor shape for each mode
let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"

" Completion -------------------------------------------------------------------

" Select no candidate initially
set completeopt+=noselect

" Show popup regardless the number of candidates
set completeopt+=menuone

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

augroup WrapMarkdown
    autocmd!
    autocmd BufRead,BufNewFile *.md setlocal wrap
augroup END

augroup YamlIndent
    autocmd!
    autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 softtabstop=2
augroup END

augroup CppIndent
    autocmd!
    autocmd FileType cpp setlocal shiftwidth=2 tabstop=2 softtabstop=2
augroup END

augroup CIndent
    autocmd!
    autocmd FileType c setlocal shiftwidth=2 tabstop=2 softtabstop=2
augroup END

augroup MakefileTab
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
