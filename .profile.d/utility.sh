#! /usr/bin/env bash
# Small basic utility functions

ls () {
  command ls --color=auto "$@"
}

ll () {
  ls -la "$@"
}
