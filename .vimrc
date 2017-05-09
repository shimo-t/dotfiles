" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible
endif

runtime! dein/*.vim
runtime! init/*.vim
