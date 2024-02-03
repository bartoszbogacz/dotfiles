" Do not modify any timeout settings, as usually suggested in example configs.
" This results in having to press ESC twice to exit insert mode under tmux.

set nocompatible

" On inserting a parenthesis matchparen jumps to its previous
" match shortly to highlight it and distracts the user.
" Prevent matchparen from loading by pretending it to be loaded.
let loaded_matchparen = 1

" Colors
colorscheme slate
syntax on

" Indent
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4

" Wrap
set wrap

" Search
set nowrapscan
set hlsearch
set incsearch
" set grepprg=git\ grep\ -n

set backspace=indent,eol,start
set belloff=all
set completeopt=menuone,longest
set encoding=utf8
set fileformats=unix,dos,mac
set lazyredraw
set list
set listchars=tab:>-,trail:~,precedes:<,extends:>,nbsp:%
set nobackup
set nomodeline
set noshowmatch
set nostartofline
set noswapfile
set nowritebackup
set number
set path=.
set ruler
set scrolloff=5
set showcmd
set showmode
set tags=tags
set wildmode=list:longest

command Scratch setlocal buftype=nofile | setlocal bufhidden=hide

set nocursorline
autocmd InsertEnter * set cursorline
autocmd InsertLeave * set nocursorline
