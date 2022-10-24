" Do not modify any timeout settings, as usually suggested in example configs.
" This results in having to press ESC twice to exit insert mode in tmux.

let loaded_matchparen = 1
filetype indent plugin on
colorscheme koehler
syntax on

set autoindent
set backspace=indent,eol,start
set belloff=all
set completeopt=menuone,noinsert,preview
set encoding=utf8
set expandtab
set fileformats=unix,dos,mac
set grepprg=grep\ -Hrn\ $*\
set hidden
set hlsearch
set ignorecase
set incsearch
set lazyredraw
set list
set listchars=tab:>-,trail:~,precedes:<,extends:>,nbsp:%
set nobackup
set nocompatible
set nomodeline
set noshowmatch
set nostartofline
set noswapfile
set nowrap
set nowrapscan
set nowritebackup
set number
set path=.
set ruler
set scrolloff=5
set shiftwidth=4
set showcmd
set showmode
set sidescroll=20
set smartcase
set softtabstop=4
set wildmenu
set wildmode=full
