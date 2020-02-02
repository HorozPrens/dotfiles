let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
" go lang mappings
au FileType go nmap <leader>gr <Plug>(go-run)
au FileType go nmap <leader>gb <Plug>(go-build)
au FileType go nmap <leader>gt <Plug>(go-test)
au FileType go nmap <leader>gc <Plug>(go-coverage)

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>go <Plug>(go-doc)

au FileType go nmap <Leader>gn <Plug>(go-rename)
au FileType go nmap <Leader>gi <Plug>(go-info)
au FileType go nmap <Leader>gm <Plug>(go-implements)

