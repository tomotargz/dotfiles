" vim-clang
let g:clang_auto=0
let g:clang_c_completeopt='menuone,preview,noinsert'
let g:clang_cpp_completeopt='menuone,preview,noinsert'
let g:clang_format_style='WebKit'
let g:clang_diagsopt=''
nnoremap <Leader>f :ClangFormat<cr>
