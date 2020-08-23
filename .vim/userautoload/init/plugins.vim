call plug#begin()

" colorschemes
Plug 'tomotargz/kuro.vim'
Plug 'tomotargz/silence.vim'
Plug 'w0ng/vim-hybrid'

" editing
Plug 'bronson/vim-trailing-whitespace'
Plug 'tyru/caw.vim'

" filer
Plug 'justinmk/vim-dirvish'

" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" grep
Plug 'jremmen/vim-ripgrep'

" memo
Plug 'glidenote/memolist.vim'

" lsp
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

" completion
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/asyncomplete-file.vim'
Plug 'prabirshrestha/asyncomplete-buffer.vim'

" markdown preview
Plug 'tyru/open-browser.vim', {'for': 'markdown'}
Plug 'kannokanno/previm', {'for': 'markdown'}
Plug 'rcmdnk/vim-markdown'

" linter
Plug 'dense-analysis/ale'

call plug#end()
filetype plugin indent on
