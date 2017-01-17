syntax on
set number
set expandtab
set tabstop=2
set tags=tags;/
set smartcase
set ignorecase
set scroll=10
set hlsearch
set incsearch
set showcmd
set scrolloff=5

set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/tagbar
set runtimepath^=~/.vim/bundle/nerdtree

nmap <F8> :TagbarToggle<CR>
nnoremap <esc> :noh<return><esc>
