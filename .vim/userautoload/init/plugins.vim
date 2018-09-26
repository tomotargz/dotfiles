call plug#begin()
" --------------------
" colorschemes
Plug 'tomotargz/kuro.vim'

" filer
Plug 'justinmk/vim-dirvish'

" fuzzy finder
Plug 'junegunn/fzf.vim'
Plug '/usr/local/opt/fzf'

" grep
Plug 'nazo/pt.vim'

" memo
Plug 'glidenote/memolist.vim'

" markdown
Plug 'tyru/open-browser.vim'
Plug 'kannokanno/previm'

" git
Plug 'tpope/vim-fugitive'

" lint
Plug 'w0rp/ale'

" language
if v:version > 704 || (v:version == 704 && has('patch1689'))
    Plug 'fatih/vim-go'
endif

" completion
if has('python3')
    " need pip3 install neovim
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
    Plug 'zchee/deoplete-go', { 'do': 'make'}
    Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
endif

" edit text
Plug 'bronson/vim-trailing-whitespace'
Plug 'tyru/caw.vim'

" --------------------
call plug#end()
filetype plugin indent on
