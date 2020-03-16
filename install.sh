#!/usr/bin/env bash

if [ $# -ne 1 ]; then
  echo "usage: install.sh [SOURCE_DIR]"
  echo "  e.g. install.sh ./"
  exit
fi

rsync -rv $1/.zsh* $1/.bash* $1/.tmux.conf $1/.vim* ~
