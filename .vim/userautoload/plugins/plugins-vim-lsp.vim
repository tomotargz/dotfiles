if executable('gopls')
  augroup LspGo
    au!
    autocmd User lsp_setup call lsp#register_server({
    \ 'name': 'go-lang',
    \ 'cmd': {server_info->['gopls', '-mode', 'stdio']},
    \ 'whitelist': ['go'],
    \ })
    autocmd FileType go setlocal omnifunc=lsp#complete
  augroup END
endif

" if executable('clangd')
"   augroup LspCxx
"     au!
"     autocmd User lsp_setup call lsp#register_server({
"        \ 'name': 'clangd',
"        \ 'cmd': {server_info->['clangd', '-background-index']},
"        \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
"        \ })
"     autocmd FileType cpp setlocal omnifunc=lsp#complete
"     autocmd FileType c setlocal omnifunc=lsp#complete
"   augroup END
" endif

" if executable('ccls')
"    au User lsp_setup call lsp#register_server({
"      \ 'name': 'ccls',
"      \ 'cmd': {server_info->['ccls']},
"      \ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
"      \ 'initialization_options': {},
"      \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
"      \ })
" endif

" if executable('cquery')
"    au User lsp_setup call lsp#register_server({
"      \ 'name': 'cquery',
"      \ 'cmd': {server_info->['cquery']},
"      \ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
"      \ 'initialization_options': { 'cacheDirectory': '/tmp/cquery/cache' },
"      \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
"      \ })
" endif

" " 僕の環境だとCPU食い散らかすので使えない
" if executable('rls')
"     au User lsp_setup call lsp#register_server({
"      \ 'name': 'rls',
"      \ 'cmd': {server_info->['rustup', 'run', 'stable', 'rls']},
"      \ 'workspace_config': {'rust': {'clippy_preference': 'on'}},
"      \ 'whitelist': ['rust'],
"      \ })
" endif
"
