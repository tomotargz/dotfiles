let g:ctrlp_cmd='CtrlPCurWD'
let g:ctrlp_by_filename=1
let g:ctrlp_lazy_update=1

if has('win32') || has('win64') && !has('win32unix')
    " windows
    let g:ctrlp_user_command = {
                \ 'types': {
                \ 1: ['.git', 'cd %s && git ls-files -co --exclude-standard'],
                \ },
                \ 'fallback': 'dir %s /-n /b /s /a-d'
                \ }
else
    " mac linux cygwin msys2
    let g:ctrlp_user_command = {
                \ 'types': {
                \ 1: ['.git', 'cd %s && git ls-files -co --exclude-standard'],
                \ },
                \ 'fallback': 'find %s -not -name "*.o" -a -not -name "*.obj" -type f'
                \ }
endif
