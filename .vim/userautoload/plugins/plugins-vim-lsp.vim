function! s:on_lsp_buffer_enabled() abort
  nmap <buffer> <f2> <plug>(lsp-rename)
  nmap <buffer> <C-]> <plug>(lsp-definition)
  nmap <buffer> <leader>f <plug>(lsp-document-format)
  " nmap <buffer> <leader>e <plug>(lsp-document-diagnostics)
  nmap <buffer> <leader>e <plug>(lsp-next-diagnostic)
endfunction

augroup lsp_install
  au!
  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

let g:lsp_diagnostics_echo_delay = 100
let g:lsp_diagnostics_echo_cursor = 1
