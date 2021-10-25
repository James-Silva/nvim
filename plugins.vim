" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Vim Colorschemes
    Plug 'flazz/vim-colorschemes'
    Plug 'erichdongubler/vim-sublime-monokai' 
	Plug 'crusoexia/vim-monokai'
	Plug 'patstockwell/vim-monokai-tasty'
	Plug 'sainnhe/gruvbox-material'
	Plug 'sjl/badwolf'
    Plug 'octol/vim-cpp-enhanced-highlight'

    " Intellisense engine
    " Plug 'neoclide/coc.nvim', {'branch': 'release'}

	" Tags
	Plug 'preservim/tagbar'
	Plug 'ludovicchabant/vim-gutentags'
    
    " fzf in vim
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " Changes Vim working directory to project root for fzf
    Plug 'airblade/vim-rooter' 
   
    " Git Integration
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'

	" Syntax Checking
	Plug 'vim-syntastic/syntastic'

    """ Asthetics
    " Start Screen and Session Management
    Plug 'mhinz/vim-startify'
    " Nerdy File explorer (Try and get rid of this for ranger and fzf!)
    Plug 'scrooloose/NERDTree'
    Plug 'tpope/vim-obsession'

    """ Editor Things
    " Jump to any location specified by two characters
    Plug 'justinmk/vim-sneak'
    " Better commenting
    Plug 'tpope/vim-commentary'
    " Better window resizing using CTRL+E and h, j, k,or l 
    Plug 'simeji/winresizer' 
    " Quoting/parenthesizing made simple
    " Plug 'tpope/vim-surround'
	" Pairs of handy bracket mappings
	Plug 'tpope/vim-unimpaired'	

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
