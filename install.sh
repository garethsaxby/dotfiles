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
GREY=$(tput setaf 245)
NORMAL=$(tput sgr0)

# Standardised print function for output messages
function print {
  printf '%s: %s\n' "${BOLD}${BLUE}$(date '+%Y-%m-%dT%H:%M:%S')${NORMAL}" "$@" 1>&2
}

# Generate and return a list of files that need linking
# Can include both files and folders
function file_list {
  print "Generating File List..."
  # TODO: Build list of dotfiles dynamically with exclude list
  list=".aws .gitconfig .gitignore_global .ssh .zshrc .git-template"
  printf '%s' "${list}"
  print "${list}"
}

function link_files {
  print "Linking dotfiles..."
  OLD_IFS="${IFS}"
  IFS=" "
  PWD="$(pwd)"
  for i in "$@"; do
    if [ ! -L ~/"${i}" ] && [ ! -e ~/"${i}" ]; then
      print "Linking .${i}..."
      ln -s "${PWD}/${i}" "${HOME}/${i}"
    else
      print "${GREY}${i} already linked${NORMAL}"
    fi
  done
  IFS="${OLD_IFS}"
}

function link_ssh_keys {
  print "Linking ssh keys..."
  if [ ! -L "${HOME}/.ssh/private_keys" ] && [ ! -e "${HOME}/.ssh/private_keys" ]; then
    ln -s "${HOME}/Dropbox/Security/ssh_keys" "${HOME}/.ssh/private_keys"
  fi
}

function link_nvim {
  print "Linking nvim config..."
  if [ ! -L "${HOME}/.config/nvim" ] && [ ! -e "${HOME}/.config/nvim" ]; then
    ln -s "${PWD}/nvim" "${HOME}/.config/nvim"
  fi
}

function main {
  print "Installing dotfiles..."
  FILE_LIST="$(file_list)"
  # shellcheck disable=SC2086 # We want to split on an IFS here
  link_files ${FILE_LIST}
  link_ssh_keys
  link_nvim
  print "Dotfiles installed"
}

main
