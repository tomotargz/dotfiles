" 見た目関係-------------------------------------------------------------------
set nowrap
set visualbell t_vb=
set smartindent
set laststatus=2

" カーソル形状をモードごとに変える---------------------------------------------
if exists('$TMUX')
  let &t_SI = "\ePtmux;\e\e[5 q\e\\"
  let &t_EI = "\ePtmux;\e\e[2 q\e\\"
else
  let &t_SI = "\e[5 q"
  let &t_EI = "\e[2 q"
endif

" 補完-------------------------------------------------------------------------
" preview windowを表示しない
set completeopt-=preview
" 補完候補を初期選択しない
set completeopt+=noselect
" 補完候補が一つでもポップアップを表示する
set completeopt+=menuone
" 補完が終わったらpreview windowを閉じる
" autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

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

" ESCの反応速度を上げる--------------------------------------------------------
set ttimeoutlen=10

" 拡張子別の設定---------------------------------------------------------------
augroup WrapMarkdown
    autocmd!
    autocmd BufRead,BufNewFile *.md setlocal wrap
augroup END

augroup YamlIndent
    autocmd!
    autocmd BufRead,BufNewFile *.yml *.yaml setlocal shiftwidth=2 tabstop=2 softtabstop=2
augroup END
