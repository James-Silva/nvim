syntax enable                           " Enables syntax highlighing

"=== Colorscheme ==="
set termguicolors
colorscheme monokai

"=== Spaces and Tabs ==="
set backspace=indent,eol,start " make backspace work like other programs
set tabstop=4       " the width of a TAB 
set softtabstop=4   " sets the number of columns for a TAB
set shiftwidth=4    " indent width
" set expandtab       " expand TABs to spaces

"=== Highlighting and Searching ==="
set incsearch       " search as characters are entered
set hlsearch        " highlight matches
set ignorecase      " ignore case while searching
set smartcase       " case sensitive only is cases are used
" turn off search highlight
nnoremap <CR> :nohlsearch<CR>

"=== Miscellaneous ==="
set nofixendofline
set colorcolumn=120
set number
set relativenumber          " show line numbers
set showcmd         " show command in bottom bar 
set cursorline      " highlight current line
set wildmenu        " visual autocomplete for command menu
set lazyredraw      " Tip to decrease scrolling times. Buffers screen updates
set mouse=a         " Allow mouse to be used in Vim
set splitbelow      " Open new split panes to bottom
set splitright      " Open new split panes to right
set hidden          " Keep Terminal Windows open after :q

"=== Set Proper C++ Comments ==="
autocmd Filetype cpp setlocal commentstring=//\ %s

"=== Set bash so nvim will work with GFiles ==="
" set shell=bash

"=== Make .form files have xml highlighting ==="
autocmd BufEnter *.form :setlocal filetype=xml
