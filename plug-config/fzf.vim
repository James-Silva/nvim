" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }

" - down / up / left / right
let g:fzf_layout = { 'down': '40%' }
"
"   " - Window using a Vim command
"   let g:fzf_layout = { 'window': 'enew' }
"   let g:fzf_layout = { 'window': '-tabnew' }
"   let g:fzf_layout = { 'window': '10new' }

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline' 
" let $FZF_DEFAULT_COMMAND="fd --type f"
" let $FZF_DEFAULT_COMMAND="rg.exe --files"
let g:fzf_preview_window = ['right:50%', 'ctrl-/']

"=== Helper for the below remapping ===
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

"=== Remap v-split since it's mapped to paste ===
let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-x': 'vsplit' }

command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --color=always --line-number -- '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

map <space>f :GFiles<CR>
map <space>/ :Lines<CR>
map <space>b :Buffers<CR>
map <space>t :Tags<CR>
map <space>g :GGrep<CR>
map <space>l :BLines<CR>
nnoremap <space>r :Rg<CR>
nnoremap <space>a :Ag<CR>

nnoremap <silent> <space>T :call fzf#vim#tags(expand('<cword>'))<CR>
nnoremap <silent> <space>G :GGrep <C-R><C-W><CR>
nnoremap <silent> <space>A :Ag <C-R><C-W><CR>
nnoremap <silent> <space>R :Rg <C-R><C-W><CR>
nnoremap <silent> <space>L :BLines <C-R><C-W><CR>
nnoremap <silent> <space>F :call fzf#vim#files('.', {'options':'--query '.expand('<cword>')})<CR>

" This is the default option:
" "   - Preview window on the right with 50% width
" "   - CTRL-/ will toggle preview window.
" " - Note that this array is passed as arguments to fzf#vim#with_preview
" function.
" " - To learn more about preview window options, see `--preview-window`
" section of `man fzf`.
" let g:fzf_preview_window = ['right:50%', 'ctrl-/']
"
" " Preview window on the upper side of the window with 40% height,
" " hidden by default, ctrl-/ to toggle
" let g:fzf_preview_window = ['up:40%:hidden', 'ctrl-/']
"
" " Empty value to disable preview window altogether
" let g:fzf_preview_window = []
