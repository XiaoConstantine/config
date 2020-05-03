" ===
" === Ultisnips
" ===
let g:python_host_prog='/usr/bin/python2.7'
"let g:python3_host_prog='/usr/local/bin/python3'
let g:tex_flavor = "latex"
inoremap <c-n><nop>
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-e>"
let g:UltiSnipsJumpBackwardTrigger="<c-n>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/Ultisnips/', $HOME.'/.config/nvim/plugged/vim-snippets/Ultisnips/']
silent! au BufEnter,BufRead,BufNewFile * silent! unmap<c-r>
augroup ultisnips_no_auto_expansion
    au!
    au VimEnter * au! UltiSnips_AutoTrigger
augroup END


