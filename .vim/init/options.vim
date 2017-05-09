set encoding=utf-8

set showmode
set showcmd

set autoread
set autowrite

set autoindent
set smartindent

set wrap

set list
set listchars=tab:>-,trail:-,eol:↲,nbsp:␣,precedes:←,extends:→

set backspace=indent,eol,start

set incsearch
set hlsearch

" When the search is finished, search again from the BOF.
set wrapscan

" Emphasize the matching parenthesis
set showmatch

" Ignore case
set ignorecase
set smartcase

" Use spaces instead of <Tab>
set expandtab
"set noexpandtab
set smarttab

" Number of spaces to use for each step of (auto)indent.
set shiftwidth=4

" Number of spaces that a <Tab> in the file counts for.
set tabstop=4

" Number of spaces that a <Tab> counts for while performing editing
" operations, like inserting a <Tab> or using <BS>.
set softtabstop=4

" Command-line completion operates in an enhanced mode.
set wildmenu

" Wildmenu mode
set wildmode=longest:full,full

" Ignore compiled files
set wildignore&
set wildignore=.git,.hg,.svn
set wildignore+=*.jpg,*.jpeg,*.bmp,*.gif,*.png
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest,*.so,*.out,*.class
set wildignore+=*.swp,*.swo,*.swn
set wildignore+=*.DS_Store

" Moving the cursor left and right will be modern.
set whichwrap=b,s,h,l,<,>,[,]

" Always display a status line
set laststatus=2

" Show line and column number
set ruler

" Show cursor line
set cursorline

" Use clipboard
set clipboard=unnamed

" Show line number
set number

" History size
set history=10000
