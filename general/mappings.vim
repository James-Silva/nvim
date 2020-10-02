"=== Movement ==="

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" esc and ctrl key mapping
imap jj <Esc>

"=== Window Management ==="
set winwidth=100 " Force minimum width

" Control and direction changing panes
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

"=== Leader Shortcuts ==="
let mapleader=","   " closer than '\'

" alternate ways to get to the beginning and end of a line
noremap <leader>b ^
noremap <leader>e $

" set working directory to the current file
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

" exit terminal with ESC
tnoremap <Esc> <C-\><C-n>
