"nnoremap <buffer> <Leader>gD :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
"nnoremap <buffer> <Leader>gd :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

nnoremap <Leader>gd <c-]>

if !exists("g:ctags_command")
    let g:ctags_command= "ctag -R ."
endif

function! RunCtagsCommand()
    silent !clear
    execute "!" . g:ctags_command 
endfunction

nnoremap <leader>r :call RunCtagsCommand()<cr>
