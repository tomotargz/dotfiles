let mapleader="\<Space>"
set backspace=indent,eol,start

nnoremap <leader>w :w<cr>
nnoremap <leader>h :noh<cr>
nnoremap <leader>e :ll<cr>zz
nnoremap <leader>] :LspDefinition<cr>
nnoremap <leader>f :LspDocumentFormat<cr>
nnoremap j gj
inoremap <silent> jj <esc>
nnoremap k gk
nnoremap Y y$
nnoremap <C-]> g<C-]>
nnoremap <C-p> :Files<cr>
inoremap <silent> jj <esc>

augroup GoCommands
    autocmd!
    autocmd FileType go nnoremap <buffer> <C-]> :LspDefinition<cr>
    autocmd FileType go nnoremap <buffer> <leader>f :LspDocumentFormat<cr>
augroup END

augroup RustCommands
    autocmd!
    autocmd FileType rust nnoremap <buffer> <C-]> :LspDefinition<cr>
    autocmd FileType rust nnoremap <buffer> <leader>f :LspDocumentFormat<cr>
augroup END
