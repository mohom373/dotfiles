"
"                                        ________ ++     ________
"                                       /VVVVVVVV\++++  /VVVVVVVV\
"                                       \VVVVVVVV/++++++\VVVVVVVV/
"                                        |VVVVVV|++++++++/VVVVV/'
"                                        |VVVVVV|++++++/VVVVV/'
"                                       +|VVVVVV|++++/VVVVV/'+
"                                     +++|VVVVVV|++/VVVVV/'+++++
"                                   +++++|VVVVVV|/VVVVV/'+++++++++
"                                     +++|VVVVVVVVVVV/'+++++++++
"                                       +|VVVVVVVVV/'+++++++++
"                                        |VVVVVVV/'+++++++++
"                                        |VVVVV/'+++++++++
"                                        |VVV/'+++++++++
"                                        'V/'   ++++++
"                                                 ++
"    __/\\\________/\\\__/\\\\\\\\\\\__/\\\\____________/\\\\____/\\\\\\\\\____________/\\\\\\\\\_
"     _\/\\\_______\/\\\_\/////\\\///__\/\\\\\\________/\\\\\\__/\\\///////\\\_______/\\\////////__
"      _\//\\\______/\\\______\/\\\_____\/\\\//\\\____/\\\//\\\_\/\\\_____\/\\\_____/\\\/___________
"       __\//\\\____/\\\_______\/\\\_____\/\\\\///\\\/\\\/_\/\\\_\/\\\\\\\\\\\/_____/\\\_____________
"        ___\//\\\__/\\\________\/\\\_____\/\\\__\///\\\/___\/\\\_\/\\\//////\\\____\/\\\_____________
"         ____\//\\\/\\\_________\/\\\_____\/\\\____\///_____\/\\\_\/\\\____\//\\\___\//\\\____________
"          _____\//\\\\\__________\/\\\_____\/\\\_____________\/\\\_\/\\\_____\//\\\___\///\\\__________
"           ______\//\\\________/\\\\\\\\\\\_\/\\\_____________\/\\\_\/\\\______\//\\\____\////\\\\\\\\\_
"            _______\///________\///////////__\///______________\///__\///________\///________\/////////__
"=================================================================================================================
" MUST HAVE'S
"=================================================================================================================


" Plugins will be downloaded under the specified directory.
call plug#begin('$HOME/.config/nvim/plugged')

" Declare the list of plugins.
Plug 'itchyny/lightline.vim'
Plug 'dense-analysis/ale'
" Themes
Plug 'dylanaraps/wal.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'

Plug 'scrooloose/nerdtree'
" easy-align plugin
Plug 'junegunn/vim-easy-align'

" coc plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" fzf plugins
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()


" EasyAlign settings
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" Ale settings
let g:ale_completion_enabled = 1

" Set some settings
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
set colorcolumn=80          " column line 
" Only set this if wal is not used as colorscheme
set termguicolors

set wildmode=longest,list   " get bash-like tab completions
set laststatus=2	        " Always show the status line at the bottom
set backspace=indent,eol,start " Makes backspace behave more reasonably
set number relativenumber   " Set linenumber to hybrid

augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END


" leader key 
let mapleader=" "

filetype plugin indent on   " allows auto-indenting depending on file type

" Colorscheme and syntax
" colorscheme wal
colorscheme gruvbox-material

syntax on                   " syntax highlighting

" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we dont know
" how to prevent the latter.
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>


" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy "+yy
" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Coc settings start
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

let g:coc_node_path = '/home/moe/.nvm/versions/node/v13.12.0/bin/node'

" Coc settings end

" Lighline settings start
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'
" Lightline settings end
