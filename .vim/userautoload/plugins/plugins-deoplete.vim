if has('python3')
    let g:deoplete#enable_at_startup = 1
    " 初期選択しない
    set completeopt+=noselect
    " preview windowを表示しない
    set completeopt-=preview
    " enterで補完候補を選択
    inoremap <expr><cr> pumvisible() ? deoplete#close_popup() : "<cr>"
endif
