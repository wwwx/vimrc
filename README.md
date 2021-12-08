# vimrc
My custom configuration for vim

```bash
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
map <C-k> 5k

noremap Q :q!<CR>
noremap W :w!<CR>
noremap E :nohlsearch<CR>
noremap R :source $MYVIMRC<CR>

noremap y "*y

map tu :tabe<CR>
map tj :+tabnext<CR>
map tk :-tabnext<CR>

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

" Switch the focus between the beginning and end of the line
noremap <C-h> ^
noremap <C-l> $

noremap  <expr>0 col('.') == 1 ? '^' : '0'


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
" Plug 'preservim/tagbar'
" Plug 'scrooloose/syntastic'
" Plug 'junegunn/fzf'
" Plug 'junegunn/fzf.vim'
call plug#end()


" AIRLINE THEME
"
let g:airline_theme="badwolf"

" RAINBOW
"
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
"
" Open
nnoremap <leader>n :NERDTreeFocud<CR>
nnoremap <C-n> :NERDTree<CR>
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
"
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
"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" COC.VIM
"
" Use <Ctrl-F> to format documents with prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
noremap <C-F> :Prettier<CR>



" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""" Plug end
""""""""""""""""""""""""""""""""""""""""""""""""""""""
```

