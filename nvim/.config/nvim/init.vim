call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ghifarit53/tokyonight-vim'
Plug 'matze/vim-move'
Plug 'sk1418/Join'
Plug 'tpope/vim-eunuch'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-fugitive'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'lervag/vimtex'
Plug 'jiangmiao/auto-pairs'

call plug#end()

set background=dark
set termguicolors
let g:tokyonight_menu_selection_background = 'red'
colorscheme tokyonight

let g:lightline = {
      \ 'colorscheme': 'tokyonight',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set noswapfile
set clipboard^=unnamed,unnamedplus
set wildmenu
set mouse=a
set encoding=utf-8 nobomb
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set smartindent
syntax enable
filetype plugin indent on

let g:vimtex_view_method = 'zathura'

:nnoremap <silent> <C-s> :wqa % <CR>
:nnoremap <silent> <tab><Up> :resize +2<CR> 
:nnoremap <silent> <tab><Down> :resize -2<CR>
:nnoremap <silent> <tab><Left> :vertical resize +2<CR>
:nnoremap <silent> <tab><Right> :vertical resize -2<CR>

set number
" Enable syntax highlighting
syntax on
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
highlight Comment cterm=bold gui=bold

