" General neovim settings
set nocompatible	            " Disable vi compatibility mode.
set showmatch		            " Show matching brackets.
set ignorecase		            " Case insensitive matching.
set hlsearch		            " Highlight searches.
set tabstop=4		            " Setting tab width.
set softtabstop=4	            " Four spaces match to tabs.
set expandtab		            " Tabs become spaces.
set shiftwidth=4                " Auto-indenting width.
set smarttab                    " Enable smart tab.
set autoindent                  " Enable auto-indenting.
set number                      " Enable line numbers.
set colorcolumn=110             " Set maximum line length indicator.
set backspace=indent,eol,start  " Set sensible backspace behaviour.
filetype plugin indent on       " Allow automatic indenting for file types.
syntax on                       " Enable syntax highlighting.
set nobackup                    " Disable backup files.
set noswapfile                  " Disable swap files.

" Visual Settings
set termguicolors               " For enabling proper colours.
set cursorline                  " Set highlight for active line.

" Spellchecking Settings
set spell                       " Enable spell checking.
set spelllang=en_gb             " Set spell check language to British English.

" Plugin time baby!
call plug#begin()
" https://github.com/phanviet/vim-monokai-pro
Plug 'phanviet/vim-monokai-pro'
" https://github.com/itchyny/lightline.vim
Plug 'itchyny/lightline.vim'
" https://github.com/Yggdroot/indentLine
Plug 'Yggdroot/indentLine'
" https://github.com/mhinz/vim-startify
Plug 'mhinz/vim-startify'
" https://github.com/airblade/vim-gitgutter
Plug 'airblade/vim-gitgutter'
" https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'
" https://github.com/vimwiki/vimwiki
Plug 'vimwiki/vimwiki'
" https://github.com/ryanoasis/vim-devicons
" Load this last.
Plug 'ryanoasis/vim-devicons'
call plug#end()

" vim-monokai-pro Settings
colorscheme monokai_pro     " Set colour scheme.

" lightline Settings
let g:lightline = {
    \ 'colorscheme': 'monokai_pro',
    \ }

" startify Settings
let g:startify_custom_header = [
    \ ' ________  _______   ___      ___ ________  ________  ________       ',
    \ '|\   ___ \|\  ___ \ |\  \    /  /|\   __  \|\   __  \|\   ____\      ',
    \ '\ \  \_|\ \ \   __/|\ \  \  /  / | \  \|\  \ \  \|\  \ \  \___|_     ',
    \ ' \ \  \ \\ \ \  \_|/_\ \  \/  / / \ \  \\\  \ \   ____\ \_____  \    ',
    \ '  \ \  \_\\ \ \  \_|\ \ \    / /   \ \  \\\  \ \  \___|\|____|\  \   ',
    \ '   \ \_______\ \_______\ \__/ /     \ \_______\ \__\     ____\_\  \  ',
    \ '    \|_______|\|_______|\|__|/       \|_______|\|__|    |\_________\ ',
    \ '                                                        \|_________| ',
    \ ]

let g:startify_bookmarks = [ '~/setup/dotfiles' ]

" gitgutter Settings
let g:gitgutter_enabled = 1

let g:editorconfig = v:true
