" leader key 
let mapleader=" "

" Set some settings
syntax enable               " syntax highlighting
set hidden
set nocompatible            " disable compatibility to old-time vi
set noshowmode              " No need with lightline 
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set smartcase		        " smartcase mathing
set incsearch 		        " Enables searching as you type
set mouse+=a                " Enables mouse support 
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set smartindent
set colorcolumn=80          " column line 
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
" Only set this if wal is not used as colorscheme
set termguicolors
set splitright
set splitbelow

set wildoptions=pum
"set wildmode=longest,list        " get bash-like tab completions
set laststatus=2	        " Always show the status line at the bottom
set backspace=indent,eol,start " Makes backspace behave more reasonably
set number relativenumber   " Set linenumber to hybrid

set pumheight=10            " Makes popup smaller
set ruler
set cmdheight=2


filetype plugin indent on   " allows auto-indenting depending on file type

augroup MyAutoCmd
    autocmd!
    autocmd MyAutoCmd BufWritePost $MYVIMRC nested source $MYVIMRC      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

