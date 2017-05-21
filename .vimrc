" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible
endif

runtime! init/*.vim
runtime! dein/*.vim
