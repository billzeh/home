#!/usr/bin/env bash

if [ $# -ne 1 ]; then
  echo "usage: install.sh [SOURCE_DIR]"
  echo "  e.g. install.sh ./"
  exit
fi

if [ "$(uname 2> /dev/null)" = "Linux" ]; then
  dconf load /org/gnome/terminal/legacy/profiles:/ < $1/gnome-terminal-profiles.dconf
  sudo apt install xclip zsh fonts-powerline
  if [ ! -d ~/.oh-my-zsh/ ]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  fi
fi

if [ ! -d ~/.oh-my-tmux/ ]; then
  git clone https://github.com/gpakosz/.tmux.git ~/.oh-my-tmux
  cd ~
  ln -s -f ~/.oh-my-tmux/.tmux.conf ~/.tmux.conf
  cd -
fi

rsync -rv $1/.zsh* $1/.bash* $1/.tmux.conf.local $1/.vim* ~

echo "reboot to finish setup..."
