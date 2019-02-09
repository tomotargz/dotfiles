" 見た目関係-------------------------------------------------------------------
set nowrap
set visualbell t_vb=
set smartindent
set pumheight=10
set laststatus=2

" 補完を初期選択しない
set completeopt+=noselect
" preview windowを表示しない
set completeopt-=preview
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

autocmd BufRead,BufNewFile *.md setlocal wrap

" タブの振る舞い---------------------------------------------------------------
set smarttab
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" 検索-------------------------------------------------------------------------
set hlsearch
set incsearch
set smartcase
set ignorecase

" 一時ファイル-----------------------------------------------------------------
set nobackup
set noundofile
set noswapfile

" 未保存のバッファがあっても他のバッファの変更を許可---------------------------
set hidden

" OSのクリップボードと同期-----------------------------------------------------
set clipboard+=unnamed
