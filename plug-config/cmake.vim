let g:cmake_link_compile_commands = 1
let g:cmake_build_options = ["--parallel", 12]

nnoremap <silent> cB :CMakeBuild -j8<CR>
