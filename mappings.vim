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


let mapleader=" "
:autocmd InsertEnter * set timeoutlen=150
:autocmd InsertLeave * set timeoutlen=1000   
                     
 
nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>i :CtrlPLine<CR>
nnoremap <leader>t :TagbarToggle<CR>
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>k :bd<CR>


noremap  <leader>ev :e ~/dotfiles/.vimrc<CR>
nnoremap <leader>sv  :source $MYVIMRC<cr>
nmap <silent> <Leader>ig <Plug>IndentGuidesToggle

"nnoremap ;; A;<c-m><esc>
inoremap <Leader><Space> <esc>A;<esc>,
inoremap <Leader><Space> <esc>A,
nnoremap <Leader><Space> <esc>A,<esc>

"inoremap {{ <esc>A{<c-m>}<esc><S-o>
inoremap [<Space> <esc>A{<c-m>}<esc><S-o>

inoremap jj <esc>
inoremap <Ctrl-C> <Nop> 

"
"inoremap <leader>w <esc>:w<cr>i
inoremap <leader>s <esc>:w<cr>
nnoremap <leader>s :w<cr>

inoremap {{ <esc>A{<c-m>}<esc><S-o>
"nnoremap <leader>r :call RunCtagsCommand()<cr>

nnoremap <leader>a :Ag<cr>


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
:cnoremap <M-g>  <C-g>

"nerdtree for mac
nmap <D-d> :NERDTreeToggle<CR>
nmap <D-m> <CR>
nmap <D-j> <C-j>
nmap <D-k> <C-k>

nnoremap <D-i> :CtrlPLine<CR>
nnoremap <D-g> <esc>

:nnoremap <leader>w <C-w>
