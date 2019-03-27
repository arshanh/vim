set runtimepath+=~/.vim/vim_runtime

source ~/.vim/vim_runtime/vimrcs/basic.vim
source ~/.vim/vim_runtime/vimrcs/filetypes.vim
source ~/.vim/vim_runtime/vimrcs/plugins_config.vim
source ~/.vim/vim_runtime/vimrcs/extended.vim

try
source ~/.vim/vim_runtime/my_configs.vim
catch
endtry
