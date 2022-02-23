#!/usr/bin/env bash

SOURCE_DIR="$(dirname "$(realpath "$0")")"

if [ "$(uname 2> /dev/null)" = "Linux" ]; then
  dconf load /org/gnome/terminal/legacy/profiles:/ < "${SOURCE_DIR}"/gnome-terminal-profiles.dconf
  sudo apt install curl xclip vim zsh fonts-powerline tmux silversearcher-ag
  if [ ! -d ~/.oh-my-zsh/ ]; then
    RUNZSH=no sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  fi
fi

if [ ! -d ~/.oh-my-tmux/ ]; then
  git clone https://github.com/gpakosz/.tmux.git ~/.oh-my-tmux
  cd ~ || exit
  ln -s -f ~/.oh-my-tmux/.tmux.conf ~/.tmux.conf
  cd - || exit
fi

rsync -rv "${SOURCE_DIR}"/.zsh* "${SOURCE_DIR}"/.bash* "${SOURCE_DIR}"/.tmux.conf.local "${SOURCE_DIR}"/.vim* ~

echo "reboot to finish setup..."
