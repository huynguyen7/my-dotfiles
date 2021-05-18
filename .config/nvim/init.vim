set runtimepath^=~/.vim runtimepath+=~/.vim/after
source ~/.vimrc " Source all settings from .vimrc
"source ~/.config/nvim/plugins/startify.vim
source ~/.config/nvim/settings.vim
source ~/.config/nvim/mappings.vim

let &packpath = &runtimepath
let maplocalleader = "\\"

cmap w!! w !sudo tee %
