" vimrc

" plugins {
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/goyo.vim'
Plug 'ap/vim-css-color'
call plug#end()

let g:airline#extensions#tabline#enabled=1
let g:airline_theme='base16_grayscale'
"}

" basic {
set nocompatible
syntax on
filetype plugin on
filetype indent off
set encoding=utf-8
set spell spelllang=en_gb
colorscheme gruvbox
"}

" editor {
set tabstop=4
set shiftwidth=4
set listchars=tab:-->,space:.,trail:-
set list
set number relativenumber
set wildmode=list,longest,full
"}

" keybinds {
let mapleader=","

" clipboard copy/paste
map <Leader>y "*y
map <Leader>Y "+y
map <Leader>p "*p
map <Leader>P "+p

" goyo
map <Leader>f :Goyo<CR>

" shellcheck file
map <Leader>s :!clear && shellcheck %<CR>

" split tab nav
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
"}

" auto execute {
autocmd BufWritePost *.tex silent! execute "!pdflatex -output-directory pdf % >/dev/null 2>&1" | redraw!
"}

" latex keybinds
inoremap <Leader><Tab> <Esc>/<++><Enter>"_c4l
autocmd FileType tex inoremap ,bf \textbf{}<++><Esc>4hi
autocmd FileType tex inoremap ,it \textit{}<++><Esc>4hi
autocmd FileType tex inoremap ,emph \emph{}<++><Esc>4hi
autocmd FileType tex inoremap ,sec \section{}<Enter><++><Esc>kf}i
autocmd FileType tex inoremap ,*sec \*section{}<Enter><++><Esc>kf}i
autocmd FileType tex inoremap ,ssec \subsection{}<Enter><++><Esc>kf}i
autocmd FileType tex inoremap ,*ssec \*subsection{}<Enter><++><Esc>kf}i
autocmd FileType tex inoremap ,ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>

