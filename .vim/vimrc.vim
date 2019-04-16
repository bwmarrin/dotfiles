"=============================================================================
" Colorscheme
"-----------------------------------------------------------------------------
colorscheme monokai


"=============================================================================
" vim-arline Plugin
"-----------------------------------------------------------------------------
set noshowmode
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme="molokai"


"=============================================================================
" Bufferline Plugin
"-----------------------------------------------------------------------------
" no settings..

"=============================================================================
" vim-go Plugin
"-----------------------------------------------------------------------------
au FileType go nmap <leader>gr :w<CR><Plug>(go-run)
au FileType go nmap <leader>gb :w<CR><Plug>(go-build)
au FileType go nmap <leader>gt :w<CR><Plug>(go-test)
au FileType go nmap <leader>gc :w<CR><Plug>(go-coverage-toggle)
au FileType go nmap <leader>gi <Plug>(go-import) 

let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" Go Go Performance?
set ttyfast
set lazyredraw
"set re=1 " does not work with vim 7.3, re-eval.


"=============================================================================
" completion
"-----------------------------------------------------------------------------
set completeopt+=menuone
"
"=============================================================================
" VimCompletesMe Plugin
"-----------------------------------------------------------------------------

" autocomplete spelling for markdown
autocmd FileType text,markdown let b:vcm_tab_complete = 'dict'
