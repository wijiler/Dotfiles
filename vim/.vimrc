syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set guifont=Go\ Mono\ Nerd\ Font\ Complete\ Mono

set encoding=UTF-8
set colorcolumn=80
highlight CoulorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'kien/ctrlp.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'mbbill/undotree'
Plug 'ryanoasis/vim-devicons'

call plug#end()

colorscheme gruvbox
" transparent bg
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command =['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0

nnoremap <leader>u :UndoTreeShow<CR>
nnoremap <leader>e :wincmd v <bar> :Explore <bar> :vertical resize 30<CR>
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
nnoremap <leader>s :Rg<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
