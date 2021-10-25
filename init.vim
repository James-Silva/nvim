" Plugins
source $HOME/.config/nvim/plugins.vim

" General
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/mappings.vim

" Plugin Configs
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/fugitive.vim
source $HOME/.config/nvim/plug-config/gitgutter.vim
source $HOME/.config/nvim/plug-config/nerdtree.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/tagbar.vim
source $HOME/.config/nvim/plug-config/cpp-enhanced-highlight.vim
source $HOME/.config/nvim/plug-config/startify.vim
source $HOME/.config/nvim/plug-config/sublime-monokai.vim

tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"
