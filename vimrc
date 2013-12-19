set encoding=utf-8
set nocompatible

autocmd! bufwritepost .vimrc source %

call pathogen#infect()

filetype on
filetype plugin on
filetype indent on
syntax on

let mapleader = ","
nnoremap . <NOP>
set wildmode=list:longest
set autoread

" Quicksave
noremap <Leader>w :update<CR>
vnoremap <Leader>w <C-C>:update<CR>
inoremap <Leader>w <C-O>:update<CR>
" Quick quit
noremap <Leader>e :quit<CR>
" Bind


" set lazyredraw

set noshowmode
set number
set wildmenu
set laststatus=2


" Color scheme
set t_Co=256
set background=dark
colorscheme solarized
call togglebg#map("<F5>")


" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile

set nofoldenable

" Movement
" =========
" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

map <Leader>, <esc>:tabprevious<CR>
map <Leader>. <esc>:tabnext<CR>
vnoremap <Leader>s :sort<CR>


" Airline
" git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'
let g:airline#extensions#tabline#enabled = 1

func! WordProcessorMode() 
  setlocal formatoptions=1 " don't include linebreaks
  setlocal linebreak " break visually
  setlocal wrap
  setlocal nolist 
  setlocal breakat=\ |@-+;:,./?^I
  setlocal noexpandtab
  setlocal foldcolumn=3 
  setlocal nuw=5
  "setlocal columns=72

  nnoremap j gj
  nnoremap k gk
  vnoremap j gj
  vnoremap k gk

  setlocal spell spelllang=de 
  set complete+=s
  set formatprg=par
endfu 
com! WP call WordProcessorMode()
