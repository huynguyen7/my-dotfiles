#!/bin/sh

# Install brew if not available
if ! command -v brew > /dev/null ; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install git if not available
if ! command -v git > /dev/null ; then
    brew install git
fi

# Install tmux if not available
if ! command -v tmux > /dev/null ; then
    brew install tmux
fi

# Install nvim if not available
if ! command -v nvim > /dev/null ; then
    brew install nvim
fi

cp .vimrc ~/.vimrc
cp .tmux.conf ~/.tmux.conf
cp .zshrc ~/.zshrc

mkdir -r ~/.config/nvim/
mkdir -r ~/.config/zsh

cp .config/nvim/* ~/.config/nvim/
cp .config/zsh/* ~/.config/zsh/
