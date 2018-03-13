call plug#begin()
Plug 'Shougo/vimproc.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'justinmk/vim-dirvish'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tyru/caw.vim'
Plug 'nazo/pt.vim'
" Plug 'scrooloose/syntastic'
Plug 'w0rp/ale'
Plug 'justmao945/vim-clang'
Plug 'glidenote/memolist.vim'
Plug 'tpope/vim-fugitive'
Plug 'romainl/Apprentice'
Plug 'nanotech/jellybeans.vim'
Plug 'w0ng/vim-hybrid'
if v:version >= 7.4 && has('patch1689')
    Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
endif
Plug 'AndrewRadev/splitjoin.vim'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'cocopon/iceberg.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'NLKNguyen/papercolor-theme'
Plug 'kannokanno/previm'
Plug 'tyru/open-browser.vim'
if has('lua')
    Plug 'Shougo/neocomplete'
endif
call plug#end()

filetype plugin indent on
