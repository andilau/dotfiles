set nocompatible
if has('multi_byte')
	set encoding=utf-8
endif

autocmd! bufwritepost .vimrc source %

silent! call pathogen#infect()
silent! call pathogen#helptags()

" Plugins and indentation
if has('autocmd')
    filetype indent plugin on
    nnoremap _ap :setlocal filetype=apache<CR>
    nnoremap _bi :setlocal filetype=bindzone<CR>
    nnoremap _cs :setlocal filetype=css<CR>
    nnoremap _ht :setlocal filetype=html<CR>
    nnoremap _js :setlocal filetype=javascript<CR>
    nnoremap _md :setlocal filetype=markdown<CR>
    nnoremap _pl :setlocal filetype=perl<CR>
    nnoremap _ph :setlocal filetype=php<CR>
    nnoremap _py :setlocal filetype=python<CR>
    nnoremap _rb :setlocal filetype=ruby<CR>
    nnoremap _sh :setlocal filetype=sh<CR>
    nnoremap _vi :setlocal filetype=vim<CR>
    nnoremap _xm :setlocal filetype=xml<CR>
endif

" Indentation
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smarttab
set shiftround
set list
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮

" Shortcuts
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

" Command line
set ttyfast
set lazyredraw
set noshowmode
set number
set ruler
set wildmenu
set laststatus=2

" Color scheme
if has('syntax')
    syntax enable
    set t_Co=256
    set background=dark
    "silent! colorscheme solarized
    silent! colorscheme gruvbox
    call togglebg#map("<F5>")
endif


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

" Word processor mode
func! WordProcessorMode() 
  setlocal formatoptions=1 " don't include linebreaks
  setlocal linebreak " break visually
  setlocal wrap
  setlocal nolist 
  "  setlocal breakat=\ |@-+;:,./?^I
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
