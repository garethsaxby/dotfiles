# Dotfiles

These are my dotfiles. I will be using [garethsaxby/workspace-setup](https://github.com/garethsaxby/workspace-setup) to install these.

These files (should!) all be sanitised and ready for others to grab contents from, if you feel so inclined.

## Installation Process
Installation is done via the `install.sh` script, which takes no arguments.

Installation will link the files from the repository into the running user's home directory; if any existing files that match exist, they will not be linked and need to be removed by hand.

## To Do
- `file_list` needs to dynamically generate a file list for linking, removing files based on an exclusion list.