syntax enable                           " Enables syntax highlighing

"=== Spaces and Tabs ==="
set backspace=indent,eol,start " make backspace work like other programs
set tabstop=2       " the width of a TAB 
set softtabstop=2   " sets the number of columns for a TAB
set shiftwidth=2    " indent width
set expandtab       " expand TABs to spaces

"=== Highlighting and Searching ==="
set incsearch       " search as characters are entered
set hlsearch        " highlight matches
set ignorecase      " ignore case while searching
set smartcase       " case sensitive only is cases are used
" turn off search highlight
nnoremap <CR> :nohlsearch<CR>

"=== Miscellaneous ==="
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

"=== Set Proper C++ Comments==="
autocmd Filetype cpp setlocal commentstring=//\ %s
