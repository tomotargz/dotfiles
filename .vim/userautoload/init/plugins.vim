call plug#begin()

Plug 'Shougo/vimproc.vim'
Plug 'justinmk/vim-dirvish'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tyru/caw.vim'
Plug 'nazo/pt.vim'
Plug 'glidenote/memolist.vim'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf.vim'
Plug '/usr/local/opt/fzf'

" lint
Plug 'w0rp/ale'

" language
if v:version > 704 || (v:version == 704 && has('patch1689'))
    Plug 'fatih/vim-go'
endif
Plug 'justmao945/vim-clang'

" completion
if has('lua')
    Plug 'Shougo/neocomplete'
endif

" colorschemes
Plug 'w0ng/vim-hybrid'
Plug 'romainl/Apprentice'
Plug 'AlxHnr/clear_colors'

call plug#end()

filetype plugin indent on
