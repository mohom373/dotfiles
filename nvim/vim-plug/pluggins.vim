" Plugins will be downloaded under the specified directory.
call plug#begin('$HOME/.config/nvim/plugged')

" Declare the list of plugins.
" Better Syntax Highligting
Plug 'sheerun/vim-polyglot'

Plug 'itchyny/lightline.vim'
" Themes
Plug 'ntk148v/vim-horizon'
Plug 'dylanaraps/wal.vim'
" Dart-lang plugins
Plug 'dart-lang/dart-vim-plugin'

Plug 'jiangmiao/auto-pairs'

Plug 'ryanoasis/vim-devicons'
" vista plugin
Plug 'liuchengxu/vista.vim'

" undotree plugin
Plug 'mbbill/undotree'

" coc plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" fzf plugins
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'airblade/vim-rooter'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

