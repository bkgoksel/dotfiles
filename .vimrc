" Vundle initialization
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

"Installed plugins
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'slim-template/vim-slim.git'
Plugin 'vim-airline/vim-airline'

call vundle#end()
filetype plugin indent on

" Normally use tab space of 2
set tabstop=2
set shiftwidth=2
set expandtab

" Enable syntax, line numbering and mouse
syntax on
set number
set mouse=a

" Use j and k to go up and down on broken lines
nmap j gj
nmap k gk

" Enable highlighted searching
set hlsearch
set incsearch

" Enable autoindenting
set autoindent
set smartindent
set laststatus=2

" Ensure split files are added below and to the right of current pane
set splitbelow
set splitright

" Use unnamed clipboard to copy to/from system clipboard
set clipboard=unnamed

" Work with colors
set t_Co=256
colorscheme molokai

" Use jk to escape insert mode
inoremap jk <Esc>

" airline utils
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

" Use z to toggle side NERDTree file menu
nnoremap z :NERDTreeToggle<CR>

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Enable webppl formatting
au BufNewFile,BufRead *.wppl set filetype=javascript

let python_highlight_all=1

set fileformat=unix

" Configure Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
nmap <Leader>s :vs<Return>
