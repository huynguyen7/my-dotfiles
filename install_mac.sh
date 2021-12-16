#!/bin/sh

# Install brew if not available
if ! command -v brew > /dev/null ; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew install git
brew install tmux
brew install nvim

cp .tmux.conf ~/.tmux.conf
cp .zshrc ~/.zshrc

mkdir -r ~/.config/nvim/
mkdir -r ~/.config/zsh

cp .config/nvim/* ~/.config/nvim/
cp .config/zsh/* ~/.config/zsh/
