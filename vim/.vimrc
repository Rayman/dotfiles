call plug#begin()

" Make sure you use single quotes

Plug 'tpope/vim-sensible'

Plug 'editorconfig/editorconfig-vim'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'kien/ctrlp.vim'

Plug 'airblade/vim-gitgutter'

Plug 'bling/vim-airline'

call plug#end()



" vim-gitgutter
set updatetime=250



" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.
set pastetoggle=<F2>
set clipboard=unnamed



" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>



" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase
