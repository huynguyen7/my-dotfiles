#!/bin/sh

cp .tmux.conf ~/.tmux.conf
cp .zshrc ~/.zshrc

mkdir -r ~/.config/nvim/
mkdir -r ~/.config/zsh/

cp .config/nvim/* ~/.config/nvim/
cp .config/zsh/* ~/.config/zsh/
