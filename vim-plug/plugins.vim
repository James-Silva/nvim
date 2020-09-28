" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Intellisense engine
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    
    " Nerdy File explorer
    Plug 'scrooloose/NERDTree'
    
    " Changes Vim working directory to project root
    Plug 'airblade/vim-rooter' 
   
    " Status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Better commenting
    Plug 'tpope/vim-commentary'

    " Vim Colorschemes
    Plug 'flazz/vim-colorschemes'
    Plug 'erichdongubler/vim-sublime-monokai' 
    
    " Better C++ Highlighting
    Plug 'octol/vim-cpp-enhanced-highlight'

    " Start Screen and Session Management
    Plug 'mhinz/vim-startify'

    " Better window resizing using CTRL+E and h, j, k,or l 
    Plug 'simeji/winresizer' 

    " Git Integration
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'

    " fzf in vim
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " Quoting/parenthesizing made simple
    Plug 'tpope/vim-surround'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
