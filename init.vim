"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Customized Xiao Cui's vimrc file
"
" => Basic key binds: basic.vim
" => Plugins installed: plugins.vim
" => Plugins config files: $HOME/.config/nvim/pluggins/
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $HOME/.config/nvim/basic.vim
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/configs/goyo.vim
source $HOME/.config/nvim/configs/vim-go.vim
source $HOME/.config/nvim/configs/vim-startify.vim
source $HOME/.config/nvim/configs/fzf.vim
source $HOME/.config/nvim/configs/ultisnips.vim
source $HOME/.config/nvim/configs/coc.vim
source $HOME/.config/nvim/configs/undotree.vim
source $HOME/.config/nvim/configs/vim-fugitive.vim
source $HOME/.config/nvim/configs/vim-xtabline.vim
source $HOME/.config/nvim/configs/vim-illuminate.vim
source $HOME/.config/nvim/configs/markdown-preview.vim
source $HOME/.config/nvim/configs/leetcode.vim
source $HOME/.config/nvim/configs/fzf-gitignore.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction

function! CmdLine(str)
    call feedkeys(":" . a:str)
endfunction 

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction
set ruler
