"------------ AUTO SAVE -------------"
augroup autosourcing
    autocmd!
    autocmd! bufwritepost ~/.config/nvim/init.vim source %
augroup END

"Setting Mapping
set list listchars=tab:»·,trail:·
imap jj <Esc>
imap jj <c-c>
vmap v <Esc>

map ; :
let g:mapleader=','

nnoremap <leader><leader> <c-^>

"Search
nnoremap / /\v
vnoremap / /\v
map <CR> :nohlsearch<CR>

"Window Management
"setting split
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

"Nerd setting
nmap ,e :NERDTreeToggle<CR>

"Setting Number
nmap ,r :set relativenumber<CR>
nmap ,rd :set nornu<CR>

"Setting FZM CTRLP
  map <C-P> :Files<CR>
  map <C-G> :GFiles<CR>
  map <C-B> :Buffer<CR>a

"Settin ale
  let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
"setting save sudo
comman! -nargs=0 Sw w !sudo tee % > /dev/null
