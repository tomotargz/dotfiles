" 見た目関係-------------------------------------------------------------------
" 行番号を表示
set number
" 現在以外の行番号を相対表示
" set relativenumber
" 現在の行をハイライト
" set cursorline
" 80列をハイライト
" set colorcolumn=80
" 折り返し表示しない
set nowrap
" 開いたファイルが.mdと.txtの時は折り返す
augroup basic_vimrc
    autocmd!
    autocmd BufNewFile,BufRead *.md,*.txt setlocal wrap breakindent
augroup END
" 画面に収まらない文字を@@で表示しない
set display=lastline
" 警告音をミュート
set visualbell t_vb=
" カーソル形状をモードごとに変える
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"
" コマンド補完
set wildmenu
" 履歴数
set history=1000
" インデント自動設定
set smartindent
" 補完候補表示上限
set pumheight=10
" 5行残してスクロールさせる
set scrolloff=5
" 対応する括弧を強調する
set showmatch
set matchtime=1


" ステータスライン-------------------------------------------------------------
set statusline=%f
" 変更チェック表示
set statusline+=%m
" 読み込み専用かどうか表示
set statusline+=%r
" ヘルプページなら[HELP]と表示
set statusline+=%h
" プレビューウインドウなら[Prevew]と表示
set statusline+=%w
" これ以降は右寄せ表示
set statusline+=%=
" file encoding
set statusline+=%{&fileencoding}:
" 現在行数/全行数
set statusline+=%l/%L
set laststatus=2

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

" OSのクリップボードと同期-----------------------------------------------------a
set clipboard+=unnamed
