"=== Movement ==="

" move vertically by visual line
" nnoremap j gj
" nnoremap k gk

" esc and ctrl key mapping
imap jj <Esc>
imap kk <Esc>:wa<CR>
" imap jk <Esc>:q<CR>
" imap jl <Esc>:w<CR>
" imap j; <Esc>:wq<CR>
" imap ;; <Esc>:xa<CR>


"=== Window Management ==="
" set winwidth=100 " Force minimum width

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
tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"

noremap <leader>y "+y
noremap <leader>yy "+yy
noremap <leader>yw "+yiw

" === Space remaps ==="
map <space>s :Startify<CR>
map <space>c :Colors<CR>
nnoremap <leader>s :vsplit term://fish<CR>

" === Open C++ Header/Source Files ==="
map <leader>o :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
map <leader>ov :vs %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
map <leader>os :sp %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

" === Open C++ Header/Source Files ==="
noremap ]w <ESC>:set wrap!<CR>
noremap [w <ESC>:set wrap<CR>
