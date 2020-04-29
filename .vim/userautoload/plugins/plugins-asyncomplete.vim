" let g:asyncomplete_popup_delay = 100
" Buffer Source
call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
   \ 'name': 'buffer',
   \ 'whitelist': ['*'],
   \ 'completor': function('asyncomplete#sources#buffer#completor'),
   \ 'config': {
   \    'max_buffer_size': 5000000,
   \  },
   \ }))

" File Source
" au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
"    \ 'name': 'file',
"    \ 'whitelist': ['*'],
"    \ 'priority': 10,
"    \ 'completor': function('asyncomplete#sources#file#completor')
"    \ }))
