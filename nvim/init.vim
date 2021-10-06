" General neovim settings
set nocompatible	        " Disable vi compatability mode.
set showmatch		        " Show matching brackets.
set ignorecase		        " Case insensitive matching.
set hlsearch		        " Highlight searches.
set tabstop=4		        " Setting tab width.
set softtabstop=4	        " Four spaces match to tabs.
set expandtab		        " Tabs become spaces.
set shiftwidth=4            " Auto-indenting width.
set autoindent              " Enable auto-indenting.
set number                  " Enable line numbers.
set colorcolumn=110         " Set maximum line length indicator.
filetype plugin indent on   " Allow automatic indenting for file types.
syntax on                   " Enable syntax highlighting.
set nobackup                " Disable backup files.
set noswapfile              " Disable swap files.

" Colour Scheme Settings
set termguicolors
colorscheme monokai_pro
