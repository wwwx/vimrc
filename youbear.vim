"  __  ____   ____     _____ __  __ ____   ____
" |  \/  \ \ / /\ \   / /_ _|  \/  |  _ \ / ___|
" | |\/| |\ V /  \ \ / / | || |\/| | |_) | |
" | |  | | | |    \ V /  | || |  | |  _ <| |___
" |_|  |_| |_|     \_/  |___|_|  |_|_| \_\\____|
"
" Author: wwwx
"

syntax  on
filetype on
filetype indent on
filetype plugin on

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
set splitbelow
set updatetime=100
set clipboard=unnamedplus


" Automatically source vimrc on save.
" autocmd! BufWritePost $MYVIMRC source $MYVIMRC | echom "Reloaded $NVIMRC"
" au InsertLeave *.sh,*.py,*.html,*.css,*.scss,*.json,*.js,*.ts,*.vue,*.md

let mapleader = " "
noremap ; :

map <C-j> 5j
map <C-l> 7l
map <C-k> 5k
map <C-h> 7h

vmap K 5k
vmap J 5j

noremap L $
noremap H ^
noremap Q :q!<CR>
noremap W :w!<CR>
noremap R :source $MYVIMRC<CR>
noremap <C-n> :nohlsearch<CR>

noremap y "*y

map fu :tabe<CR>
map fj :+tabnext<CR>
map fk :-tabnext<CR>

" ESC
inoremap jj <Esc>

" open vimrc file while editing
noremap <leader>vi :e $HOME/.vimrc<CR>

" Press F6 to toggle the visibitly of the line numbers
nnoremap <F6> :set nonumber!<CR>:set norelativenumber<CR>

" Press F5 to run python
noremap <F5> <ESC>:w<CR>:execute "!python %"<CR>

" Press the space twice to jump to the next '<++>' and edit it
map <leader><leader> <ESC>/<++><CR>:nohlsearch<CR>c4l


noremap  <expr>0 col('.') == 1 ? '^' : '0'

" Underline the title comment
noremap gtt yyp2lv$r=


" move one line up
nnoremap <S-k> :.m.-2<CR>
" move onee line down
nnoremap <S-j> :.m.+1<CR>
" move selected lines up one line
xnoremap <C-k> :m-2<CR>gv
" move selected lines down one line
xnoremap <C-j> :m'>+<!-- <CR> -->gv


""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""" Plug start
""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/vim-easy-align'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'luochen1990/rainbow'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim'
Plug 'sirver/UltiSnips'
Plug 'honza/vim-snippets'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'preservim/tagbar'
" Plug 'scrooloose/syntastic'
call plug#end()

" FZF
" ===
" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Find in child window
noremap <c-p> :Rg<CR>
noremap <c-u> :History<CR>
noremap <c-b> :Buffers<CR>
noremap <c-y> :History:<CR>

" AIRLINE THEME
" =============
let g:airline_theme="badwolf"

" RAINBOW
" =======
let g:rainbow_active=1 " set to 0 if you want to enable it later via: RainbowToggle

" GUI mode use light background, Terminal mode use dark background
if has('gui_running')
    set background=light
else
    set background=dark
endif

" color scheme: gruvbox, one (vim-one)
colorscheme gruvbox


" NERDTREE
" ========
" Open
nnoremap <leader>n :NERDTreeFocud<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-o> :NERDTreeFind<CR>

" Switch item
noremap <leader>w <C-w>w
noremap <leader>h <C-w>h
noremap <leader>j <C-w>j
noremap <leader>k <C-w>k
noremap <leader>l <C-w>l

" Opening ranger instead of netrw when you open a directory
let g:NERDTreeHijackNetrw = 1 " add this line if you use NERDTree




" EASYALIGN
" =========
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)




" search files at urrent folder
" nnoremap <leader>f  :Files<CR>
" nnoremap <leader>b  :Buffers<CR>
" nnoremap <leader>l  :Lines<CR>
" nnoremap <leader>bl :BLines<CR>
" nnoremap <leader>h  :History<CR>


" ULTISNIPS
" =========
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"




" COC.VIM
" =======
" Use <Ctrl-F> to format documents with prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
noremap <C-F> :Prettier<CR>


" Use <Tab> and <S-Tab> to navigate the completion list
" For coc
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""" Plug end
""""""""""""""""""""""""""""""""""""""""""""""""""""""
