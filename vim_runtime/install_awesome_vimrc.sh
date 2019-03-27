#!/bin/sh

# Modified by me (Arshan Hashemi) so that paths are under .vim directory
# This allows for the vim config to be versioned (git repo)

set -e

cd ~/.vim/vim_runtime

echo 'set runtimepath+=~/.vim/vim_runtime

source ~/.vim/vim_runtime/vimrcs/basic.vim
source ~/.vim/vim_runtime/vimrcs/filetypes.vim
source ~/.vim/vim_runtime/vimrcs/plugins_config.vim
source ~/.vim/vim_runtime/vimrcs/extended.vim

try
source ~/.vim/vim_runtime/my_configs.vim
catch
endtry' > ~/.vim/vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
