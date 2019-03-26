lan en

" fonts
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

syntax on


set nocompatible

" Indentation & Tabs
set backspace=indent,eol,start " more powerfull backspaceing

set autoindent

set smartindent

set tabstop=4

set shiftwidth=4

set expandtab

set smarttab

" Display & format

set relativenumber

set textwidth=80

set wrapmargin=2

set showmatch

" Search

set hlsearch

set incsearch

set ignorecase

set smartcase

" Browse & Scroll

set scrolloff=5

set laststatus=2

" Spell

" set spell spelllang=en_us

" auto completion
set wildmode=longest,list,full
" Miscellaneous

set nobackup

set noswapfile

set autochdir

set noundofile

set visualbell

set errorbells

set noundofile

" key maps
let mapleader=" "
map <leader>a ggVG

" Vundle configuration
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=%HOME%/.vim/bundle/Vundle.vim/
call vundle#begin('$HOME/.vim/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'junegunn/fzf'

call vundle#end()            " required
filetype plugin indent on    " required

" when themes are installed, set color scheme
colorscheme jellybeans
