#! /usr/bin/env bash
# Aliases for switching to specific directories

declare -A directory_aliases
directory_aliases=(
  [p]="$HOME/projects/"
)

for alias in "${!directory_aliases[@]}"; do
  alias "$alias"="cd \"${directory_aliases[$alias]}\""
done
