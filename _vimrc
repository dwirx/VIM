"setting set
syntax on
set encoding=utf-8
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autochdir
set ai
set number
set hlsearch
set clipboard=unnamed
set ruler
set mouse=a
set autowrite
set pastetoggle=<F2>
set visualbell
set noerrorbells
set noswapfile
set smartindent
set nobackup
highlight Comment ctermfg=green

""Setting Mapping
"set list listchars=tab:»·,trail:·

imap jj <Esc>
cmap jj <c-c>
vmap v <Esc>

map ; :
let g:mapleader=','

"remaping
nnoremap <leader><leader> <c-^>

"setting pencarian
""nnoremap / /\v
"vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
map <CR> :nohl<CR>

"setting split 
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

"Setting cursor
"set cursorcolumn
"set cursorline

"mengetahui file
set title
filetype plugin on

"setting undo redo 
set undofile
set undodir=~/.config/vim/undodir

"Setting Plugin
call plug#begin('~/.config/vim/plugged')

"Thema Vim
Plug 'morhetz/gruvbox'

"auto Language
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
"Plug 'mattn/emmet-vim'
"Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'   }
Plug 'junegunn/fzf.vim'
Plug 'Luochen1990/rainbow'
"Plug 'aaren/arrowkeyrepurpose'
Plug 'EinfachToll/DidyouMean'
Plug 'mbbill/undotree'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'

Plug 'tpope/vim-unimpaired'
Plug 'lervag/vimtex'
Plug 'vim-latex/vim-latex'



call plug#end()

" Mapping to reload configuration
"autocmd! bufwritepost _vimrc source %

"setting Theme
"set background=dark
"syntax enable
"colorscheme gruvbox

"setting rainbow
  let g:rainbow_active = 1

"Mapping CTRL P
  map <leader>f :Files<CR>
  map <C-P> :GFiles<CR>
  map <C-B> :Buffer<CR>

" NERD TREE
nmap ,e :NERDTreeToggle<CR>

"Paste Tottle
set pastetoggle=<F2>

"Comment
noremap <leader>/ :Commentary<CR>

" Run Code
" augroup compileandrun
"     autocmd!
"     autocmd filetype python nnoremap <f5> :w <bar> :!python3 % <cr>
"     autocmd filetype cpp nnoremap <f5> :w <bar> !g++ -std=c++11 % <cr> :vnew <bar> :te "a.exe" <cr><cr>
"     autocmd filetype cpp nnoremap <f6> :vnew <bar> :te "a.exe" <cr>
"     autocmd filetype c nnoremap <f5> :w <bar> !make %:r && ./%:r <cr>
"     autocmd filetype java nnoremap <f5> :w <bar> !javac % && java %:r <cr>
" augroup END
"setting Font
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif
autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -std=c++11 -O2 -Wall % -o %:r && %:r.exe <CR>

"setting Realative number
nmap ,r :set relativenumber<CR>
nmap ,rd : set nornu<CR>

inoremap { {}<Left>
inoremap { {<CR>}<ESC>O
inoremap {{ {
inoremap {} {}

" ---- FIX/IMPROVE DEFAULT BEHAVIOR ---

" avoid mistyping commands
command! W w
command! Wq wq
command! Bd bd

" Split line (sister to [J]oin lines)
" The normal use of S i covered by cc, so dont't worry about shadowing
nnoremap S i<cr><esc><right>

" movement by screen line instead of file line (for text wrap)
nnoremap j gj
nnoremap <down> gj
nnoremap k gk
nnoremap <up> gk

" next tab
nnoremap <C-Tab> :tabn<CR>


inoremap jk <Esc>

" Faster scrolling
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Bubble single lines, similar to Eclipse (requires unimpaired.vim)
nmap <C-Up> [e
nmap <C-Down> ]e

 " Bubble multiple lines, similar to Eclipse (requires unimpaired.vim)
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Duplicate lines, similar to Eclipse
noremap <C-S-Up> YP
noremap <C-S-Down> YP

" Python Run
map <buffer> <silent> <F8> :w<Cr>:!clear<Cr>:!python3 %<Cr>

"map <F10> :execute '!pdflatex ' . shellescape(expand('%')) . ' && start ' . shellescape(expand('%:r') . '.pdf')<CR>

map <F10> :!pdflatex % && start<CR> 

let g:tex_flavor='latex'
" OPTIONAL: This enables automatic indentation as you type.
filetype indent on
" " `Ctrl` + `P` compiles latest save of current .tex file to pdf
autocmd FileType tex nnoremap <c-p> <ESC>:!pdflatex %<CR>
