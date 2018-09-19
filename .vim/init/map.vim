let mapleader = "\<Space>"

noremap <Leader>h ^
noremap <Leader>l $

inoremap jj <Esc>
inoremap <C-j> <Esc>
vnoremap <C-j> <ESC>

noremap j gj
noremap k gk
noremap gj j
noremap gk k

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
"nnoremap ss :<C-u>split<CR>
nnoremap sv :<C-u>vsplit<CR>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h

" tabpage
nnoremap sf gt
nnoremap sb gT
nnoremap sn gt
nnoremap sp gT
nnoremap st :<C-u>tabnew<CR>
nnoremap sq :<C-u>q<CR>

" ctags
map <leader>o :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
