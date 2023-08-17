#! /usr/bin/env bash
# Links dotfiles to home directory

GLOBIGNORE=.git:install.sh:README.md
iterm2_script_path="$HOME"/.profile.d//iterm2.sh

dotfiles=(.*)
for file in "${dotfiles[@]}"; do
  file_path=$(realpath "$file")
  ln -is "$file_path" "$HOME"/
done

if [[ -f $iterm2_script_path ]]; then
  read -r -p "replace $iterm2_script_path? " replace_iterm2_script
else replace_iterm2_script=yes
fi

if [[ ${replace_iterm2_script,,} = y* ]]; then
  curl https://iterm2.com/shell_integration/bash \
    --fail \
    --location \
    --output "$HOME"/.profile.d/iterm2.sh \
    --silent \
    --show-error
fi
