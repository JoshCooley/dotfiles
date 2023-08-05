#! /usr/bin/env bash
# shellcheck disable=SC1090,SC2164

profile_directory="${HOME}/.profile.d/"

scripts=(
  aliases.sh
  directories.sh
  editor.sh
  git.sh
  path.sh
  prompt.sh
  utility.sh
)

# Uncomment below to run all scripts
# for script in ~/.profile.d/*.sh ; do
#   source "$script"
# done

for script in "${scripts[@]/#/${profile_directory}}" ; do
  source "$script"
done
