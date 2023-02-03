function! s:on_lsp_buffer_enabled() abort
  nmap <buffer> <f2> <plug>(lsp-rename)
  nmap <buffer> <C-]> <plug>(lsp-definition)
  nmap <buffer> <leader>f <plug>(lsp-document-format)
  nmap <buffer> <leader>e <plug>(lsp-next-diagnostic)
  nmap <buffer> <leader>d <plug>(lsp-document-diagnostics)
  setlocal b:ale_enabled=0
  setlocal completeopt=menu
  setlocal omnifunc=lsp#complete
endfunction

augroup lsp_install
  autocmd!
  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

function! s:on_diagnostics_updated() abort
  " I want to update the diagnostics window
endfunction

augroup diagnostics_updated
  autocmd!
  autocmd User lsp_diagnostics_updated call s:on_diagnostics_updated()
augroup END

let g:lsp_diagnostics_echo_delay = 100
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_document_highlight_enabled = 0
let g:lsp_document_code_action_signs_enabled = 0
let g:lsp_diagnostics_virtual_text_enabled = 0
let g:lsp_log_file = ''
let g:lsp_settings = {
      \ 'efm-langserver': {
      \   'disabled': 0,
      \   'allowlist': ['markdown'],
      \  }
      \ }
