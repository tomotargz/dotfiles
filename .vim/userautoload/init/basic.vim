" 見た目関係-------------------------------------------------------------------
set nowrap
set visualbell t_vb=
set smartindent
set number
set pumheight=10

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
" swapfileに書き込むインターバル。vim-goのg:go_auto_type_info用
set updatetime=100

" 未保存のバッファがあっても他のバッファの変更を許可---------------------------
set hidden

" OSのクリップボードと同期-----------------------------------------------------
set clipboard+=unnamed
