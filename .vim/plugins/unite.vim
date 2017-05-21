"let g:unite_enable_start_insert = 1
let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1

nnoremap [unite] <Nop>
nmap <Leader>u [unite]

nnoremap <silent> [unite]u :<C-u>Unite file_mru<CR>
nnoremap <silent> [unite]f :<C-u>Unite file_rec/git<CR>
nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>
nnoremap <silent> [unite]l :<C-u>Unite line -start-insert<CR>
nnoremap <silent> [unite]m :<C-u>Unite file_mru<CR>
nnoremap <silent> [unite]o :<C-u>Unite outline -start-insert<CR>
nnoremap <silent> [unite]r :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> [unite]n :<C-u>Unite file/new -start-insert<CR>
nnoremap <silent> [unite]d :<C-u>Unite directory/new -start-insert<CR>
