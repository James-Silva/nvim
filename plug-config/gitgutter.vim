" Inspiration from https://www.reddit.com/r/vim/comments/d77t6j/guide_how_to_setup_ctags_with_gutentags_properly/

" default updatetime 4000ms is not good for async update
set updatetime=100

" Centralized location for tags
" let g:gutentags_cache_dir = expand('~/.cache/vim/ctags/')

" Command to clear the Cache quickly
command! -nargs=0 GutentagsClearCache call system('rm ' . g:gutentags_cache_dir . '/*')

" Tag generation while editing
let g:gutentags_generate_on_new = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_empty_buffer = 0

let g:gutentags_ctags_exclude = [
	\ 'veslibs',
	\ 'veslink',
	\ ]

" Let Gutentags generate more info for the tags
let g:gutentags_ctags_extra_args = [
      \ '--c++-kinds=+p',
			\ '--fields=+iaS',
			\ '--extra=+q',
      \ ]

