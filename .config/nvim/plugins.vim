call plug#begin('~/.config/nvim/plugged')

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

Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'folke/lsp-colors.nvim'
  Plug 'nvim-lua/completion-nvim'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'williamboman/nvim-lsp-installer'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" theme
Plug 'dylanaraps/wal.vim'
Plug 'morhetz/gruvbox'

call plug#end()

if (has("termguicolors"))
 set termguicolors
endif
set background=dark

" colorscheme wal
colorscheme gruvbox


