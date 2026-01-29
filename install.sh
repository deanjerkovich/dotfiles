#!/usr/bin/env bash
cp bash ~/.bashrc
cp zshrc ~/.zshrc
cp tmux.conf ~/.tmux.conf
cp vimrc ~/.vimrc
cp gdbinit ~/.gdbinit
cp gitconfig ~/.gitconfig
if ! command -v tmux &> /dev/null; then
    echo "❌ not found: tmux is not installed. please install"
else
    echo "You've got tmux, great!"
fi

if [ -d "$HOME/.oh-my-zsh" ]; then
  echo "📂 Oh My Zsh directory found. great!"
else
  echo "❓ Oh My Zsh directory not found."
fi
