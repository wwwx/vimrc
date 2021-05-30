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

inoremap jj <Esc>

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
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'junegunn/vim-easy-align'
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'
call plug#end()
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

map <C-t> :NERDTreeToggle<CR>

" search files at urrent folder
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

