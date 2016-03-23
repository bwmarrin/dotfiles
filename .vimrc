" needs a category, but also needs to be up top, apparently.
let mapleader=" "

"=============================================================================
" Appearance
"-----------------------------------------------------------------------------
syntax on
set number relativenumber
set background=dark
set colorcolumn=81


"============================================================================
" Searching
"-----------------------------------------------------------------------------
set incsearch               " Incremental Searching 
set ignorecase smartcase    " Ignore case when all lowercase


"============================================================================
" Switch between splits
"----------------------------------------------------------------------------
nnoremap <silent> <C-h> <C-w><C-h>
nnoremap <silent> <C-j> <C-w><C-j>
nnoremap <silent> <C-k> <C-w><C-k>
nnoremap <silent> <C-l> <C-w><C-l>


"============================================================================
" Aliases
"-----------------------------------------------------------------------------
" reload vimrc file
map <leader>s :source ~/.vimrc<CR>

" short cuts for buffers
map <leader>b :ls<CR>:b 
map <leader>n :enew<CR>
map <leader>h :bprev<CR>
map <leader>j :blast<CR>
map <leader>k :bfirst<CR>
map <leader>l :bnext<CR>
map <leader>d :bdelete<CR>


"============================================================================
" Indenting / Wrapping
"-----------------------------------------------------------------------------
set nowrap
set tabstop=4
set shiftwidth=4
set shiftround
set expandtab






"============================================================================
" stuff I haven't made a category for..
"-----------------------------------------------------------------------------
filetype plugin indent on
set hidden
set visualbell
set laststatus=2               " alwasy put a status line

"eliminate delay on ESC
set timeoutlen=1000
set ttimeoutlen=10

" enable mouse
set mouse=a

set showcmd	                   " display incomplete commands
set splitright


" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
autocmd BufReadPost *
            \ if line("'\"") > 1 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif

" re-indent file while retaining cursor position.
nnoremap <leader>= mzgg=G`z


"============================================================================
" This loads my extended .vim/vimrc.vom file for plugins
" It is optional and will only load if exists so I can have my basic
" settings on systems where I don't need to install all my plugins.
"-----------------------------------------------------------------------------
runtime vimrc.vim
