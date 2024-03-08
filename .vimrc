" Vim configuration file

" Vim plug
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'

call plug#end()

" To toggle off the trailing whitespaces
" let g:airline#extensions#whitespace#enabled = 0

" Set your Airlines theme https://github.com/vim-airline/vim-airline/wiki/Screenshots
let g:airline_theme='term'

"enable mouse support
set mouse =a

" enable syntax
syntax on

"enable line numbers
set number

"highlight current line "
" set cursorline
:highlight Cursorline cterm=bold ctermbg=black

" When using a macro that has to redraw the screen for every action. much much faster
set lazyredraw

" Disable highlighting of all occurrences when starting a new file
set nohlsearch

"enable highlight search pattern
set hlsearch

"enable smartcase search sensitivity
set ignorecase
set smartcase

" use regular clipboard not vim buffers to copy to also need to install
" vim-gtk3
set clipboard=unnamedplus

" show the matching part of pairs [] {} and []
set showmatch

" enable color themes
if !has('gui_running')
	set t_Co=256
endif

"enable true color support
set termguicolors

" Vim colorscheme
" colorscheme habamax

" need to find the exact comment before adding
let @/ = ""

"Remap source .vimrc to ää
nnoremap ää :so ~/.vimrc<CR>

" Remove trailing whitespaces
" %s/\s\+$//e

" Start an automatic command => autocmd
autocmd BufWritePre * :%s/\s\+$//e " Will remove all trailing whitespaces out of files you edit with vim
