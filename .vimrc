
"=============================================================================
" General Settings
"-----------------------------------------------------------------------------

set nocompatible               " turn off vi compatibility - must be first.
set undolevels=1000            " lots and lots of undo!
set history=50                 " size of :command history
set backspace=indent,eol,start " allow backspacing over everything
set backup		               " keep a backup file
set history=50                 " keep 50 lines of command line history
set ruler                      " show the cursor position all the time
set showcmd	                   " display incomplete commands
set incsearch                  " do incremental searching


"=============================================================================
" Colors
"-----------------------------------------------------------------------------



"=============================================================================
" Presentation
"-----------------------------------------------------------------------------
set shortmess=aIoO             " really short messages, don't show intro?
set showmode                   " show the current input mode
set more                       " page on extended ouptput?
set visualbell                 " turn on visual bell
set noerrorbells               " turn off that damn ding.
set noequalalways              " don't always keep windows at equal sizes?
set splitbelow                 " splitted window appears below current one

"=============================================================================
" Statusline, Ruler
"-----------------------------------------------------------------------------
set laststatus=2               " alwasy put a status line

"=============================================================================
" Tab standards
"-----------------------------------------------------------------------------
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab                  " expand tabs to spaces? Maybe..


"=============================================================================
" Colors
"-----------------------------------------------------------------------------





"=============================================================================
" Other stuff
"-----------------------------------------------------------------------------
filetype plugin indent on

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
au!

" For all text files set 'textwidth' to 78 characters.
autocmd FileType text setlocal textwidth=78

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

augroup END

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif



set autoindent
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set background=dark
let g:PHP_vintage_case_default_indent = 1

set colorcolumn=80
autocmd BufRead,BufNewFile *.md setlocal spell
set complete+=kspell
hi clear SpellBad
hi SpellBad cterm=underline

