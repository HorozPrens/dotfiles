
if !exists("g:ctags_command")
    let g:ctags_command= "ctag -R ."
endif

function! RunCtagsCommand()
    silent !clear
    execute "!" . g:ctags_command 
endfunction

