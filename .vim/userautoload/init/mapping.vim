let mapleader="\<Space>"
set backspace=indent,eol,start

nnoremap <leader>w :w<cr>
nnoremap <leader>h :noh<cr>
nnoremap <leader>e :ll<cr>zz
nnoremap <leader>] :LspDefinition<cr>
nnoremap <leader>f :LspDocumentFormat<cr>
nnoremap j gj
nnoremap k gk
nnoremap Y y$
nnoremap <C-]> g<C-]>
nnoremap <C-p> :Files<cr>

augroup GoCommands
    autocmd!
    autocmd FileType go nnoremap <buffer> <C-]> :LspDefinition<cr>
    autocmd FileType go nnoremap <buffer> <leader>f :LspDocumentFormat<cr>
augroup END
