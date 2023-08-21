#! /usr/bin/env bash
# Small basic utility functions

ls () {
  command ls --color=auto "$@"
}

ll () {
  ls -la "$@"
}

llt () {
  num_lines="${1:-10}"
  ll | tail -n "$num_lines"
}
