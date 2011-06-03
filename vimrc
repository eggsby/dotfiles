filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on
syntax on
set ofu=syntaxcomplete#Complete

au BufRead,BufNewFile *.less set filetype=less
autocmd BufWritePost,FileWritePost *.less silent !lessc <afile> <afile>:r.css
let coffee_compile_on_save = 1
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
let g:yankring_history_dir = '~/.vim'

set nocompatible

set modelines=0

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set colorcolumn=80
set encoding=utf-8
set scrolloff=6
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list,longest,full
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

let mapleader = ","
" python/ruby style regex, (no escaping)
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault

" highlight searches as they are typed
set incsearch
set showmatch
set hlsearch
" clear out selected text
nnoremap <leader><space> :noh<cr>
" tab scroll through matches
nnoremap <tab> %
vnoremap <tab> %

set wrap
set formatoptions=qrn1

" get rid of arrow keys, pesky pesky arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>

" move up and down by *screen lines* rather than file lines
nnoremap j gj
nnoremap k gk

" fat finger remap, make sure F1 isn't accidentally pressed
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" reselect text after indentation
vnoremap < <gv
vnoremap > >gv

" shift sucks, change : to ;
nnoremap ; :

au FocusLost * :wa

nnoremap <leader>ft Vatzf
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
nnoremap <leader>v V']
nnoremap <leader>n :NERDTree<CR>
inoremap jj <ESC>
nnoremap <leader>w <C-w>v<C-w>1
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

set t_Co=256
set background=dark
colorscheme jellybeans
