call plug#begin('~/.config/nvim/plugged')

" theme
Plug 'dylanaraps/wal.vim'

" editor
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'psliwka/vim-smoothie'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" git plugins
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'octref/rootignore'
Plug 'rhysd/committia.vim'
Plug 'tpope/vim-git'

" json
Plug 'elzr/vim-json', {'for': ['json']}

" markdown
Plug 'gabrielelana/vim-markdown', {'for': ['markdown']}
Plug 'mzlogin/vim-markdown-toc', {'for': ['markdown']}

call plug#end()

colorscheme wal

