#! /usr/bin/env bash
# Functions and such for git
# shellcheck disable=SC2139

g () {
  git "$@"
}

gau () {
  git add --update "$@"
}

gd () {
  git diff "$@"
}

gfp () {
  git push --force-with-lease "$@"
}
alias gpf=gfp

gl () {
  git log "$@"
}

gs () {
  git status "$@"
}
