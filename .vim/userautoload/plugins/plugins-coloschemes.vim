syntax on
set background=light

let g:simplifysimplify_dark_CursorLineNr = 'off'
let g:simplifysimplify_dark_LineNr = 'off'
let g:simplifysimplify_light_CursorLineNr = 'off'
let g:simplifysimplify_light_LineNr = 'off'
let g:PaperColor_Theme_Options = {
            \   'theme': {
            \     'default': {
            \       'allow_bold': 0,
            \       'allow_italic': 0
            \     }
            \   }
            \ }

if has('termguicolors') && $TERM_PROGRAM ==# 'iTerm.app'
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
    colorscheme simplifysimplify-light
else
    colorscheme PaperColor
endif

