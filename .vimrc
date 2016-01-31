set encoding=utf-8

set nocompatible

set backspace=indent,eol,start

if has("vms")
  set nobackup
else
  set backup
endif

set history=100
set ruler
set number
set showcmd
set incsearch

set autoindent
set expandtab
set shiftwidth=4
set smarttab
set softtabstop=2
set tabstop=2

set undofile
set undodir=~/.vim/undos//
set directory=~/.vim/swaps//
set backupdir=~/.vim/backups//

" Don't use Ex mode, use Q for formatting
map Q gq

if has('mouse')
  set mouse=a
endif

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

filetype plugin indent on

set autoindent

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

if has('langmap') && exists('+langnoremap')
  set langnoremap
endif

if has('gui_running')
  set guioptions-=m                " remove menu
  set guioptions-=T                " remove toolbar
  set guioptions-=r                " remove right scrollbar
  set guioptions-=b                " remove bottom scrollbar
  set guioptions-=L                " remove left scrollbar
endif

" hjkl to jkl;
noremap j h
noremap k j
noremap l k
noremap ; l

colo desert
