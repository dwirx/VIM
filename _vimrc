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
set mouse=""
set autowrite
set pastetoggle=<F2>
set visualbell
highlight Comment ctermfg=green

"Setting Mapping
set list listchars=tab:»·,trail:·

imap jj <Esc>
cmap jj <c-c>
vmap v <Esc>

map ; :
let g:mapleard=','

"remaping
nnoremap <leader><leader> <c-^>

"setting pencarian
nnoremap / /\v
vnoremap / /\v
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
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'   }
Plug 'junegunn/fzf.vim'
Plug 'Luochen1990/rainbow'
Plug 'aaren/arrowkeyrepurpose'
Plug 'EinfachToll/DidyouMean'

call plug#end()

" Mapping to reload configuration
"autocmd! bufwritepost _vimrc source %

"setting Theme
set background=dark
syntax enable
colorscheme gruvbox

"setting rainbow
  let g:rainbow_active = 1

"Mapping CTRL P
  map <leader>f :Files<CR>
  map <C-P> :GFiles<CR>
  map <C-B> :Buffer<CR>

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


