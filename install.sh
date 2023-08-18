#! /usr/bin/env bash
# Links dotfiles to home directory

GLOBIGNORE=.git:install.sh:README.md

dotfiles=(.*)
for file in "${dotfiles[@]}"; do
  file_path=$(realpath "$file")
  ln -is "$file_path" "$HOME"/
done
