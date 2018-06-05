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
Plug 'kannokanno/previm'
Plug 'tyru/open-browser.vim'
Plug 'w0ng/vim-hybrid'

" lint
Plug 'w0rp/ale'

" language
if v:version > 704 || (v:version == 704 && has('patch1689'))
    Plug 'fatih/vim-go'
endif
Plug 'justmao945/vim-clang'

" completion
if has('python3')
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
    let g:deoplete#enable_at_startup = 1
    " need pip3 install nvim
endif

" colorschemes
Plug 'sonph/onehalf', {'rtp': '/vim'}
Plug 'thomwiggers/vim-colors-solarized'
call plug#end()

filetype plugin indent on
