#!/usr/bin/env bash

if [ $# -ne 1 ]; then
  echo "usage: install.sh [SOURCE_DIR]"
  echo "  e.g. install.sh ./"
  exit
fi

if [ "$(uname 2> /dev/null)" = "Linux" ]; then
  dconf load /org/gnome/terminal/legacy/profiles:/ < $1/gnome-terminal-profiles.dconf
  sudo apt install xclip zsh fonts-powerline
  if [ ! -d ~/.oh-my-zsh/ ]l then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  fi
fi

rsync -rv $1/.zsh* $1/.bash* $1/.tmux.conf $1/.vim* ~

echo "reboot to finish setup..."
