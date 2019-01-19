call plug#begin()
" --------------------
" colorschemes
Plug 'tomotargz/jellybeans.vim'
Plug 'tomotargz/kuro.vim'
Plug 'tomotargz/silence.vim'

" filer
Plug 'justinmk/vim-dirvish'

" fuzzy finder
Plug 'junegunn/fzf.vim'
Plug '/usr/local/opt/fzf'

" grep
Plug 'jremmen/vim-ripgrep'

" memo
Plug 'glidenote/memolist.vim'

" markdown
Plug 'tyru/open-browser.vim'
Plug 'kannokanno/previm'

" git
Plug 'tpope/vim-fugitive'

" lint
Plug 'w0rp/ale'

" lsp
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'

" language-c/cpp
Plug 'rhysd/vim-clang-format'
Plug 'justmao945/vim-clang'

" edit text
Plug 'bronson/vim-trailing-whitespace'
Plug 'tyru/caw.vim'

" --------------------
call plug#end()
filetype plugin indent on
