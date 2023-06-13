function! s:on_lsp_buffer_enabled() abort
  nmap <buffer> <C-]> <plug>(lsp-definition)
  nmap <buffer> <leader>f <plug>(lsp-document-format)
  nmap <buffer> <leader>d <plug>(lsp-document-diagnostics)
endfunction

augroup lsp_install
  autocmd!
  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
