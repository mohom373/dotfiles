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
"
"                    =======================================================
"                    =    ==  =======  ==    ==        ==       =====     ==
"                    ==  ===   ======  ===  ======  =====  ====  ===  ===  =
"                    ==  ===    =====  ===  ======  =====  ====  ==  =======
"                    ==  ===  ==  ===  ===  ======  =====  ===   ==  =======
"                    ==  ===  ===  ==  ===  ======  =====      ====  =======
"                    ==  ===  ====  =  ===  ======  =====  ====  ==  =======
"                    ==  ===  =====    ===  ======  =====  ====  ==  =======
"                    ==  ===  ======   ===  ======  =====  ====  ===  ===  =
"                    =    ==  =======  ==    =====  =====  ====  ====     ==
"                    =======================================================
"==============================================================================
" MUST HAVE'S
"==============================================================================


" Source plugins, settings and mappings
source $HOME/.config/nvim/vim-plug/pluggins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim 

" EasyAlign settings start
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" EasyAlign settings end

" Dart-lang settings start
let g:dart_style_guide = 2
"let g:dart_format_on_save = 1
" Flutter settings start 
nnoremap <leader>fa :FlutterRun<CR>
nnoremap <leader>fq :FlutterQuit<CR>
nnoremap <leader>fr :FlutterHotReload<CR>
nnoremap <leader>fR :FlutterHotRestart<CR>
nnoremap <leader>fD :FlutterVisualDebug<CR>
" Flutter settigns end
" Dart settings end


" NERDtree settings start 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <leader>n :NERDTreeToggle<CR>
" NERDtree settings end

" Colorscheme and syntax
" colorscheme wal
" colorscheme gruvbox-material
source $HOME/.config/nvim/themes/vim-horizon.vim

" Coc settings start
source $HOME/.config/nvim/plug-config/coc.vim

" Fzf and ripgrep settings
source $HOME/.config/nvim/plug-config/fzf.vim
