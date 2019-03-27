
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Customizations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>[ :call SetFoldCol()<cr>
map <leader>l :set invnumber<cr>

" esc in insert mode
 inoremap kj <esc>
"
" esc in command mode
 cnoremap kj <C-C>

" Fold column helper function "
function! SetFoldCol()
 if &foldcolumn == 1
     set foldcolumn=0
 else
     set foldcolumn=1
 endif
 call ToggleSignColumn()
endfunction

" Toggle signcolumn. Works only on vim>=8.0 or NeoVim
function! ToggleSignColumn()
    if !exists("b:signcolumn_on") || b:signcolumn_on
        set signcolumn=no
        let b:signcolumn_on=0
    else
        set signcolumn=auto
        let b:signcolumn_on=1
    endif
endfunction

" Bell settings
if exists('&belloff')
  set belloff=all   " never ring the bell for any reason
endif

" No Wrapping
set nowrap

" Ctrl-p
set runtimepath^=~/.vim/vim_runtime/my_plugins/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"" Reduce number of lines stored in a register (to speed up vim)
set viminfo='20,<50,s10'

" Enable fzf
set rtp+=/usr/local/opt/fzf

