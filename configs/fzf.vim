" ===
" === FZF
" ===
set rtp +=/usr/local/opt/fzf
noremap <C-p> :Files<CR>
noremap <C-F> :Rg<CR>
noremap <C-h> :History<CR>
"noremap <C-t> :BTags<CR>
noremap <C-l> :Lines<CR>
noremap <C-B> :Buffers<CR>
noremap <leader>; :History:<CR>

let g:fzf_preview_window = 'right:60%'
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'


