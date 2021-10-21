scriptencoding utf-8

" Indentation
set smartindent


" Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

set shiftround

set list
set listchars-=nbsp:+
set listchars-=trail-
set listchars+=trail:•,nbsp:~,eol:↵
" set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
highlight BadWhitespace ctermbg=red guibg=red

" Shortcuts
let mapleader = ","
nnoremap . <NOP>
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
set timeout timeoutlen=1000 ttimeoutlen=50

" Linenumbers
set number 
set ruler

" Status line
set laststatus=2
set cmdheight=1

" Filetype plugins
filetype plugin indent on

" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile


" Splitting
set splitbelow
set splitright

" Window movement
" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
nnoremap <silent> <c-j> <c-w>j
nnoremap <silent> <c-k> <c-w>k
nnoremap <silent> <c-l> <c-w>l
nnoremap <silent> <c-h> <c-w>h

" Window resizing
nnoremap <silent> <C-Left> :vertical resize +2<CR>
nnoremap <silent> <C-Right> :vertical resize -2<CR>
nnoremap <silent> <C-Up> :resize +2<CR>
nnoremap <silent> <C-Down> :resize -2<CR>


" map <Leader>, <esc>:tabprevious<CR>
" map <Leader>. <esc>:tabnext<CR>
" vnoremap <Leader>s :sort<CR>

" Folding
set foldmethod=indent
set foldlevel=99
nnoremap <Space> za
vnoremap <Space> za

" Wild
set wildignore+=*.log,*.pyc,*.sqlite,*.sqlite3,*.min.js,*.min.css,*.tags
set wildignore+=*.zip,*.7z,*.rar,*.gz,*.tar,*.gzip,*.bz2,*.tgz,*.xz
set wildignore+=*.png,*.jpg,*.gif,*.bmp,*.tga,*.pcx,*.ppm,*.img,*.iso
set wildignore+=*.pdf,*.dmg,*.app,*.ipa,*.apk,*.mobi,*.epub
set wildignore+=*.mp4,*.avi,*.flv,*.mov,*.mkv,*.swf,*.swc
set wildignore+=*.ppt,*.pptx,*.doc,*.docx,*.xlt,*.xls,*.xlsx,*.odt,*.wps
set wildignore+=*/.git/*,*/.svn/*,*.DS_Store

set wildmode=longest:full,full
set wildmenu

" netrw (file browser)
let g:netrw_banner=0            " disable banner
let g:netrw_liststyle=3         " tree view
let g:netrw_browse_split=4      " open in new vertical split
let g:netrw_altv=1              " open splits to the right
let g:netrw_winsize = 25        " 25%
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END
