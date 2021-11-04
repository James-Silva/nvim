set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" let g:syntastic_cpp_errorformat=1
" let g:syntastic_cpp_checkers = ["clang_tidy"]
let g:syntastic_cpp_config_file = '/home/jimmy/.syntastic_cpp_config' 
" let g:syntastic_cpp_check_header = 1
" let g:syntastic_cpp_include_dirs = ["/mnt/c/Users/jsilva/repos/vip/imos/clibs"]
" let g:syntastic_cpp_include_dirs = ["clibs"]
" let g:syntastic_cpp_no_default_include_dirs=1
" let g:syntastic_cpp_remove_include_errors = 1
