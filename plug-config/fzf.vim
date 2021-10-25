" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }

" - down / up / left / right
  let g:fzf_layout = { 'down': '40%' }
"
"   " - Window using a Vim command
" let g:fzf_layout = { 'window': 'enew' }
"   let g:fzf_layout = { 'window': '-tabnew' }
"   let g:fzf_layout = { 'window': '10new' }

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline' 
" let $FZF_DEFAULT_COMMAND="fd --type f"
let $FZF_DEFAULT_COMMAND="rg.exe --files"

command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number -- '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

map <space>f :GFiles<CR>
map <space>l :Lines<CR>
map <space>b :Buffers<CR>
map <space>t :Tags<CR>
map <space>g :GGrep<CR>
map <space>/ :BLines<CR>
nnoremap <space>r :Rg<CR>
nnoremap <space>a :Ag<CR>

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
