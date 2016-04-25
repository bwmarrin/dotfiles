"=============================================================================
" Pathogen Plugin
"-----------------------------------------------------------------------------
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
execute pathogen#helptags()

"=============================================================================
" Colorscheme
"-----------------------------------------------------------------------------
colorscheme monokai


"=============================================================================
" vim-arline Plugin
"-----------------------------------------------------------------------------
set laststatus=2
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
au FileType go nmap <leader>gc :w<CR><Plug>(go-coverage)
au FileType go nmap <leader>gi <Plug>(go-import) 

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" Go Go Performance?
set ttyfast
set lazyredraw
set re=1


"=============================================================================
" VimCompletesMe Plugin
"-----------------------------------------------------------------------------
