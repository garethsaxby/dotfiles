#!/usr/bin/env bash
# install.sh
# Installs my dotfiles into my home directory

# Setting up failure handling
# See http://redsymbol.net/articles/bash-exit-traps/ for details
set -Eeuo pipefail
function fatal_err {
  printf '\nError: See output for details.\n'
}
trap fatal_err ERR

# Text Formatting Setup
# See https://stackoverflow.com/a/4332530 for details
BOLD=$(tput bold)
BLUE=$(tput setaf 153)
NORMAL=$(tput sgr0)

# Standardised print function for output messages
function print {
  printf '%s: %s\n' "${BOLD}${BLUE}$(date '+%Y-%m-%dT%H:%M:%S')${NORMAL}" "$@"
}

# TODO: Build list of dotfiles
# TODO: Backup existing files
# TODO: Symbolic link files

function main {
  print "Installing dotfiles... (Not yet Implemented)"
}

main