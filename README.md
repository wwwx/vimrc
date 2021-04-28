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
" move selected lines up one line
xnoremap <C-k> :m-2<CR>gv
" move selected lines down one line
xnoremap <C-j> :m'>+<CR>gv

" vundle start ===========
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" list of plugins must be between  vundle#begin() and vundle#end()
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Lokaltog/vim-easymotion'
" Plugin 'rvim-airline/vim-airline'
Plugin 'junegunn/vim-easy-align'
call vundle#end()
filetype plugin indent on
" vundle end =============

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" UI start ================
let g:solarized_termtrans  = 1        " using termnal background
let g:solarized_visibility = "high"   " using :set list

" GUI mode use light background, Terminal mode use dark background
if has('gui_running')
    set background=light
else
    set background=dark
endif

colorscheme solarized
" colorscheme elflord
" UI end =================
```
