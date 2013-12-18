set nocompatible

execute pathogen#infect()

filetype on
filetype plugin on
filetype indent on

syntax on

set lazyredraw

set background=dark
set showmode
set number

set wildmenu

set laststatus=2
set t_Co=256
colorschem solarized

call togglebg#map("<F5>")
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'
