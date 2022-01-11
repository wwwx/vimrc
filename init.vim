"  __  ____   ____     _____ __  __ ____   ____
" |  \/  \ \ / /\ \   / /_ _|  \/  |  _ \ / ___|
" | |\/| |\ V /  \ \ / / | || |\/| | |_) | |
" | |  | | | |    \ V /  | || |  | |  _ <| |___
" |_|  |_| |_|     \_/  |___|_|  |_|_| \_\\____|
"
" Author: wwwx
"

if empty(glob($HOME.'/.config/nvim/autoload/plug.vim'))
    !curl -k -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs
				\ http://139.224.225.178:8980/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" customize vim plugin
" source $HOME/.config/nvim/code/comment.vim
set rtp+=$HOME/.config/nvim/code/comment
set rtp+=$HOME/.config/nvim/code/hello
noremap ghh :CommentHtml<CR>j
noremap gjj :CommentReact<CR>j


exec "nohlsearch"

let &t_ut=''
set t_Co=256
set autochdir
set hidden " TextEdit might fail if hidden is not set
set encoding=utf-8
set number
set relativenumber
set showmode
set showcmd
set cursorline
set showmatch
set noswapfile
set wildmenu
set wildmode=longest:list,full
set scrolloff=5
set wrap
set autoindent
set ignorecase
set smartcase
set shortmess+=c
set splitright
set splitbelow
set updatetime=100

" tab
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" leader key
let mapleader=" "
noremap  ; :
noremap = nzz
noremap - Nzz

" fold
set foldmethod=indent   
set foldenable
set foldlevel=99

" folding
noremap <LEADER>o za


" split bar styling
set fillchars+=vert:\|

" split window
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>

" split resize
map <UP> :resize +5<CR>
map <DOWN> :resize -5<CR>
map <LEFT> :vertical resize +5<CR>
map <RIGHT> :vertical resize -5<CR>

noremap Q  :q<CR>
noremap W  :w<CR>
noremap R  :w<CR>:source $MYVIMRC<CR>
noremap <LEADER>q :qa<CR>

map H ^
map L $
map s <nop>
map <C-j> 5j
map <C-k> 5k
map <C-h> 7h
map <C-l> 7l

inoremap jj <ESC>
noremap <LEADER><CR> :nohlsearch<cr>
noremap <LEADER>vi :e $HOME/.config/nvim/init.vim<CR>
noremap <expr>0 col('.') == 1 ? '^' : '0'
nnoremap dy d%
noremap gtt yyp2lv$r=

" Copy to system clipboard
noremap y  "*y
noremap yy "*yy
noremap Y  "*y$
noremap x  "*x
noremap dd "*dd

" Indentation
noremap < <<
noremap > >>

" Tabs action
map fn :tabe<CR>
map fj :+tabnext<CR>
map fk :-tabnext<CR>
map ff Tfj


" Automatically source vimrc on save.
autocmd! BufWritePost $MYVIMRC source $MYVIMRC

" Press the space twice to jump to the next '<++>' and edit it
map <LEADER><LEADER> <ESC>/<++><CR>:nohlsearch<CR>c4l

" SWitch the line number and relativenumber
noremap <F6> :set nonumber norelativenumber<CR>
noremap <F5> :set number relativenumber<CR>


"""""""""""
"  Plugins  "
"""""""""""

call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'ryanoasis/vim-devicons'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'dhruvasagar/vim-table-mode'
Plug 'itchyny/calendar.vim'
Plug 'kshenoy/vim-signature'
Plug 'luochen1990/rainbow'
Plug 'editorconfig/editorconfig-vim'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
" Auto rename HTML tag
Plug 'AndrewRadev/tagalong.vim'
" Find & replace
Plug 'brooth/far.vim', { 'on': [ 'F', 'Far', 'Fardo' ] }
" Highlighting other uses of the current word under the cursor
Plug 'RRethy/vim-illuminate'
" Navigating
Plug 'kevinhwang91/rnvimr'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()


" Rainbow
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" Vim-javascript
" ==============
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" Fzf
" ===
" <C-j> cursor up option
" <C-k> cursor down option
" <CR>  open in current window
" <C-x> open in a vertically split window
" <C-v> open in a horizontally split window
" <C-t> open in a new tab
" <C-c> close fzf
noremap <LEADER>r :Rg<CR>
noremap <LEADER>f :GFiles<CR>
noremap <LEADER>h :History<CR>
noremap <LEADER>l :Lines<CR>
noremap <LEADER>b :Buffers<CR>
noremap <LEADER>; :History:<CR>

" Far.vim
" =======
noremap <LEADER>/ :Far
set lazyredraw

" Airline
" =======
let g:airline#extensions#tabline#enabled = 1

" Rnvimr
" ======
" open the floating ranger
nnoremap <C-m> :RnvimrToggle<CR>


" MARKDOWN PREVIEW
" ================
nmap <C-s> <Plug>MarkdownPreview
" nmap <A-s> <Plug>MarkdownPreviewStop
" nmap <C-p> <Plug>MarkdownPreviewToggle


" ULTISNIPS
" =========
let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/Ultisnips/', $HOME.'/.config/nvim/plugged/vim-snippets/UltiSnips/'] 
let g:UltiSnipsExpandTrigger="<C-e>"
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" Commentary
" ==========
noremap gcc :Commentary<CR>


" EasyAlign
" =========
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)



" NERDTree
" ========
" nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-i>     :NERDTreeToggle<CR>
nnoremap <C-o>     :NERDTreeFind<CR>
noremap  <LEADER>w <C-w>w

let NERDTreeMapOpenInTab='<ENTER>'
let g:NERDTreeGitStatusShowClean = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

" Color scheme
colorscheme gruvbox

" Calendar.vim
" ============
noremap cl :Calendar<CR>
noremap ck :Calendar -view=clock<CR>


" Use <Tab> and <S-Tab> to navigate the completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


" Use <Ctrl-F> to format documents with prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
noremap <C-F> :Prettier<CR>



" Change the current line positon: top(zt), middle(zz), bottom(zb)
fun! Redraw()
  let l = winline()
  let cmd = l * 2 <= winheight(0) + 1 ? l <= (&so + 1) ? 'zb' : 'zt' : 'zz'
  return cmd
endf

nnoremap <expr><C-p> Redraw()


let g:coc_global_extensions = [
	    \'coc-tsserver',
	    \'coc-json',
	    \'coc-html',
	    \'coc-css',
	    \'coc-git',
	    \'coc-prettier',
	    \'coc-marketplace',
	    \'coc-vimlsp',
	    \'coc-vetur',
	    \'coc-emmet']


" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" Applying codeAction to the selected region.
" Example: `<LEADER>aap` for current paragraph
xmap <LEADER>a  <Plug>(coc-codeaction-selected)
nmap <LEADER>a  <Plug>(coc-codeaction-selected)



" Mappings for CoCList
" ====================
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
" nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.


" Mappings for CoCGit
" ===================
" navigate chunks of current buffer
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)
" navigate conflicts of current buffer
nmap [c <Plug>(coc-git-prevconflict)
nmap ]c <Plug>(coc-git-nextconflict)
" show chunk diff at current position
nmap gs <Plug>(coc-git-chunkinfo)
" show commit contains current position
nmap gc <Plug>(coc-git-commit)
" create text object for git chunks
omap ig <Plug>(coc-git-chunk-inner)
xmap ig <Plug>(coc-git-chunk-inner)
omap ag <Plug>(coc-git-chunk-outer)
xmap ag <Plug>(coc-git-chunk-outer)
" If you're not using statusline plugin, you can add them to statusline by
nnoremap <silent> <space>g  :<C-u>CocList --normal gstatus<CR>
" undo the current chunk
nmap gu :CocCommand git.chunkUndo<CR>

