" vimrc

" basic
set nocompatible
syntax on
filetype plugin on
set encoding=utf-8

" editor
set tabstop=4
set listchars=tab:-->,space:.,trail:-
set list
set number relativenumber
set wildmode=list,longest,full

" keybind
let mapleader=","
map <Leader>y "*y
map <Leader>Y "+y
map <Leader>p "*p
map <Leader>P "+p
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

