let mapleader = " "

nnoremap <leader>pv :Lex<CR>
nnoremap <leader>pf :Files<CR>

inoremap jk <esc>:w<CR>
nnoremap <C-p> :GFiles<CR>

" move selection up/down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" why not
inoremap <C-c> <esc>
