call plug#begin()

Plug 'Shougo/vimproc.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'justinmk/vim-dirvish'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tyru/caw.vim'
Plug 'nazo/pt.vim'
Plug 'glidenote/memolist.vim'
Plug 'tpope/vim-fugitive'

" lint
Plug 'w0rp/ale'
" Plug 'scrooloose/syntastic'

" language
if v:version > 704 || (v:version == 704 && has('patch1689'))
    Plug 'fatih/vim-go'
endif
Plug 'justmao945/vim-clang'

" completion
if has('lua')
    " Plug 'Shougo/neocomplete'
endif

" colorschemes
Plug 'w0ng/vim-hybrid'
Plug 'romainl/Apprentice'
Plug 'nightsense/simplifysimplify'
Plug 'AlxHnr/clear_colors'

call plug#end()

filetype plugin indent on
