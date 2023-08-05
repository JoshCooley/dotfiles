#! /usr/bin/env bash
# Links dotfiles to home directory

GLOBIGNORE=install.sh:README.md

dotfiles=(.*)
for file in "${dotfiles[@]}"; do
  file_path=$(realpath "$file")
  ln -is "$file_path" "$HOME"/
done
