let mapleader = "\<Space>"

noremap <Leader>h ^
noremap <Leader>l $

inoremap jj <Esc>
inoremap <C-j> <Esc>
vnoremap <C-j> <ESC>

inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap ` ``<Left>

inoremap <C-p> <UP>
inoremap <C-n> <DOWN>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-h> <BS>
inoremap <C-d> <Delete>
inoremap <C-a> <Home>
inoremap <C-e> <End>

cnoremap <C-p> <UP>
cnoremap <C-n> <DOWN>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>
cnoremap <C-h> <BS>
cnoremap <C-d> <Delete>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" windows
nnoremap s <Nop>
nnoremap sp :<C-u>split<CR>
nnoremap sv :<C-u>vsplit<CR>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H

" tabpage
nnoremap t <Nop>
nnoremap th gt
nnoremap tl gT
nnoremap tt :<C-u>tabnew<CR>
