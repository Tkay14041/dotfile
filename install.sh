#!/bin/bash

ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.config/nvim ~/.config/nvim

# tmux
if [ ! /usr/local/Cellar/tmux ]; then
  brew install tmux
fi
if [ ! ~/.tmux/plugin/tpm ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

