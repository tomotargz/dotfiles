" 編集中のファイルパスをクリップボードにコピーする
function! g:CopyFilePath()
  let @* = expand("%:p")
  echo @*
endfunction

" 編集中のファイル名をクリップボードにコピーする
function! g:CopyFileName()
  let @* = expand("%:t")
  echo @*
endfunction

" 編集中のファイルの存在するフォルダのパスをクリップボードにコピーする
function! g:CopyFolderPath()
  let @* = expand("%:p:h")
  echo @*
endfunction

" コマンドとして実行できるようにする
command! CopyFilePath :call g:CopyFilePath()
command! CopyFileName :call g:CopyFileName()
command! CopyFolderPath :call g:CopyFolderPath()

" vimrc
command! Vimrc :e ~/.vim/userautoload/init/basic.vim
command! SourceVimrc :source ~/.vimrc
