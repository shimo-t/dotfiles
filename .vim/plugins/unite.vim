"let g:unite_enable_start_insert = 1

nnoremap [unite] <Nop>
nmap <Space>u [unite]

nnoremap <silent> [unite]u :<C-u>Unite file_mru buffer<CR>
nnoremap <silent> [unite]f :<C-u>UniteWithCurrentDir -buffer-name=files file<CR>
nnoremap <silent> [unite]a :<C-u>UniteWithCurrentDir -buffer-name=files file buffer file_mru bookmark<CR>
nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>
nnoremap <silent> [unite]m :<C-u>Unite file_mru<CR>
nnoremap <silent> [unite]r :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> [unite]n :<C-u>Unite file/new<CR>
nnoremap <silent> [unite]d :<C-u>Unite directory/new<CR>
