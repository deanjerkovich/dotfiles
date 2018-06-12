syntax on
set number
set expandtab
set tabstop=4
set tags=tags;/
set smartcase
set ignorecase
set scroll=10
set hlsearch
set incsearch
set showcmd
set scrolloff=5
set cursorline

set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/tagbar
set runtimepath^=~/.vim/bundle/nerdtree

nmap <F8> :TagbarToggle<CR>
nnoremap <silent> <esc> :noh<CR>

syntax on

if executable('ag')
          let g:ackprg = 'ag --vimgrep'
  endif

au BufRead,BufNewFile *.go set filetype=go

set nobackup
set nowritebackup
set noswapfile

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END
