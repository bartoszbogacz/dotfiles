set nocompatible " Don't be compatible with historic VI

" Do not modify any timeout settings, as usually suggested in example configs
" since this results in having to press ESC twice to exit insert mode in tmux.

" Filetype based settings and indent
set fileformats=unix,dos,mac " Either detect in this order or use UNIX default
set encoding=utf8 " Set default encoding of new buffers, registers, strings, etc.
filetype indent plugin on " Configure indent and plugins
set autoindent " Copy indent from current line when starting a new one
set expandtab " Use spaces instead of tab
set nomodeline " Disable modelines in files to prevent security issues
set shiftwidth=4 " Count of columns to ident or un-indent
set softtabstop=4 " How many characters a tab counts. Allows for mixing tab and spaces
syntax on " Syntax highlighting

" Movement
set backspace=indent,eol,start " Allow backspacing over autoindent, line breaks and start of insert action
set nostartofline " Keep column when moving vertically instead moving to first non-blank
set scrolloff=5 " Begin scrolling up or down 5 lines before window
set sidescroll=20 " Scroll horizonatlly 1 column at a time

" Search
set incsearch " Find matches while typing
set nohlsearch " Do not highlight search pattern after search finished
set ignorecase " Perform case insensitive search
set smartcase " Become case sensitive if term has any upper-case letters
set nowrapscan " For searching wrap around when reaching the top or bottom
set path=. " Search only in current directory and ignore /usr/include etc.
set grepprg=grep\ -IHnr\ $*\ .

" Saving changes
set hidden " Hide buffers (also unnamed ones) if they have unsaved changes
set nobackup " Do not create backup files while editing
set noswapfile " Do not use swapfiles
set nowritebackup " Do not create backup files before writing to disk

" Command-line, i.e. the line at the bottom
set showcmd " Show more information in command-line
set showmode " Show mode which we are in

set wildmenu " Show completions of current word in command-line on tab press
set wildmode=longest:full " Complete to longest then to first full match

" Visuals
let loaded_matchparen = 1 " Do not highlight matching parenthesis (prevents loading the plugin)
set belloff=all " Never use the bell
set lazyredraw " Do not redraw window when executing macros
set list " Show non-printing characters (tabs, weird space, trailing space)
set listchars=tab:>-,trail:~,precedes:<,extends:>,nbsp:%
set number " Show line numbers
set noshowmatch " Do not jump to the opening bracket when typing a closing one
set ruler " Show line and column of cursor
set nowrap " Do not wrap lines

colorscheme koehler
