# **VIM**

- **Link List**

  - https://www.youtube.com/watch?v=QB9V__3VO2s

  - https://www.chrisatmachine.com/Neovim/01-vim-plug/

  - https://www.chrisatmachine.com/Neovim/02-vim-general-settings/

  - https://medium.com/@budasuyasa/saya-belajar-vim-selama-1-5-bulan-dan-belum-bisa-keluar-8517eb019b30

  - https://www.youtube.com/watch?v=QB9V__3VO2s

  - https://www.keybr.com/

  - https://www.seredata.com/2019/11/setting-vim-sebagai-ide-developer.html
  
  - https://www.youtube.com/watch?v=DogKdiRx7ls
  
  - https://www.youtube.com/watch?v=GYw6l30vybY
  
- **Config**
  - https://github.com/sauravj7/nvim_config
  - https://github.com/geohot/configuration/blob/master/.vimrc
  
  
  ### Setting Vim windows
  - Meperbarui Pengaturan
    - source %
  - Cara pindah ke file lain
    - ,,
  - Membuat file baru
    - :w C:\User\all\_vimrc
  - Membuka File
    - :e C:\User\all\
  - Cara Copy paste lansung banyak
    - Y2p
  - Cara Split 
    -split
    -vsplit
  - Setting Surround
    - cs ( [
  - Emmet vim
    - C-Y ,
  " Run Code 
    - Python
    
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
  
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
  
## Install commentary VIm
Installation
Pathogen:

cd ~/.vim/bundle
git clone git://github.com/tpope/vim-commentary.git

vim-plug:

Plug 'tpope/vim-commentary'

Vundle:

Plugin 'tpope/vim-commentary'

Further customization

Add this to your .vimrc file: noremap <leader>/ :Commentary<cr>

You can now toggle comments by pressing Leader+/, just like Sublime and Atom.

|referensi|
|[Become a Html Ninja with Emmet for Vim](https://medium.com/vim-drops/be-a-html-ninja-with-emmet-for-vim-feee15447ef1)|
