let g:fzf_prefer_tmux = 1
let g:fzf_layout = { 'down': '30%' }
nnoremap [Fzf] <Nop>
nmap <Leader>f [Fzf]
nnoremap [Fzf]f :<C-u>Files<CR>
nnoremap [Fzf]g :<C-u>GFiles<CR>
nnoremap [Fzf]G :<C-u>GFiles?<CR>
nnoremap [Fzf]b :<C-u>Buffers<CR>
