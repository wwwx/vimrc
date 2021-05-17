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
set history=1000
set autoread
set nobackup
set nowb
set noswapfile
set paste
set mouse-=a


filetype on
filetype indent on
filetype plugin on

syntax  on
autocmd BufWritePost $MYVIMRC source $MYVIMRC
let mapleader=";"

nmap <leader>q  :q<CR>
nmap <leader>Q  :qa!<CR>
nmap <leader>s  :wq<CR>
nmap <leader>w  :w<CR>
nmap <leader>WQ :wa<CR>:q<CR>

nnoremap <leader>lw <C-W>l
nnoremap <leader>hw <C-W>h
nnoremap <leader>kw <C-W>k
nnoremap <leader>jw <C-W>j

" Press F6 to toggle the visibitly of the line numbers
" nnoremap <F6> :set nonumber!<CR>:set foldcolumn=0<CR>

" copy to clipboard

vnoremap <leader>y "*y

" paste from clipboard

nmap     <leader>p "*p

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
Plugin 'vim-airline/vim-airline'
Plugin 'junegunn/vim-easy-align'
Plugin 'sheerun/vim-polyglot'
Plugin 'mattn/emmet-vim'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-commentary'
call vundle#end()
filetype plugin indent on
" vundle end =============

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow  = 1

let g:user_emmet_mode       = 'inv'
let g:user_emmet_leader_key = '<C-J>'

" search files at current folder
nnoremap <leader>f  :Files<CR>
nnoremap <leader>b  :Buffers<CR>
nnoremap <leader>l  :Lines<CR>
nnoremap <leader>bl :BLines<CR>
nnoremap <leader>h  :History<CR>

" UI start ================
let g:solarized_termtrans  = 1        " using termnal background
let g:solarized_visibility = "high"   " using :set list

" GUI mode use light background, Terminal mode use dark background
if has('gui_running')
    set background=light
else
    set background=dark
endif

colorscheme elflord
" colorscheme elflord
" UI end =================
```

