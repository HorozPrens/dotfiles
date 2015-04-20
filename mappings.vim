nmap <c-s> :w<CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>

nmap <F2> :update<CR>
vmap <F2> <Esc><F2>gv
imap <F2> <c-o><F2>

nmap go o<ESC>k
nmap g<C-o> O<ESC>j

nnoremap <F5> :GundoToggle<CR>

nmap <F2> :!start explorer /e,%:p:h<CR>

"inoremap jj <Esc>   """ jj key is <Esc> setting

let mapleader=","
noremap <leader>d :NERDTreeToggle<CR>

nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>s :CtrlPLine<CR>

nnoremap <leader>t :TagbarToggle<CR>

nnoremap <leader>u :GundoToggle<CR>

noremap <leader>ev :e ~/dotfiles/.vimrc<CR>
nnoremap <leader>sv  :source $MYVIMRC<cr>
nmap <silent> <Leader>ig <Plug>IndentGuidesToggle

nnoremap ;; A;<c-m><esc>
inoremap ;; <esc>A;<c-m>

inoremap jk <esc>
inoremap <Ctrl-C> <Nop> 

inoremap {{ <esc>A{<c-m>}<esc><S-o>
"nnoremap <leader>r :call RunCtagsCommand()<cr>

:cnoremap <C-a>  <Home>
:cnoremap <C-b>  <Left>
:cnoremap <C-f>  <Right>
:cnoremap <C-d>  <Delete>
:cnoremap <M-b>  <S-Left>
:cnoremap <M-f>  <S-Right>
:cnoremap <M-d>  <S-right><Delete>
:cnoremap <Esc>b <S-Left>
:cnoremap <Esc>f <S-Right>
:cnoremap <Esc>d <S-right><Delete>
:cnoremap <C-g>  <C-c>

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
