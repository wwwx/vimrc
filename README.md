# vimrc
My custom configuration for vim



```bash
set nocompatible
set showmode
set showcmd
set mouse=a
set encoding=utf-8
set t_Co=256
set autoindent
set shiftwidth=4
set number
set relativenumber
set textwidth=80
set wrap
set scrolloff=5
set incsearch
set ignorecase
set wildmenu

filetype on
filetype indent on
filetype plugin on

syntax on
autocmd BufWritePost $MYVIMRC source $MYVIMRC

let mapleader=";"
nmap <leader>q :q<CR>
nmap <leader>Q :qa!<CR>
nmap <leader>s :wq<CR>
nmap <leader>w :w<CR>
nmap <leader>WQ :wa<CR>:q<CR>

nnoremap <leader>lw <C-W>l
nnoremap <leader>hw <C-W>h
nnoremap <leader>kw <C-W>k
nnoremap <leader>jw <C-W>j

" copy to clipboard
vnoremap <leader>y "*y
" paste from clipboard
nmap <leader>p "*p

" move one line up
nnoremap <S-k> :.m.-2<CR>
" move onee line down
nnoremap <S-j> :.m.+1<CR>
```

