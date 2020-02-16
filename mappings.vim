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
:autocmd InsertEnter * set timeoutlen=250
:autocmd InsertLeave * set timeoutlen=1000   
                     
 
"nnoremap <leader>f :CtrlP<CR>
"nnoremap <leader>b :CtrlPBuffer<CR>
"nnoremap <leader>i :CtrlPLine<CR>
nnoremap <leader>t :TagbarToggle<CR>
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>k :bd<CR>


noremap  <leader>ev :e ~/dotfiles/.vimrc<CR>
nnoremap <leader>sv  :source $MYVIMRC<cr>
nmap <silent> <Leader>ig <Plug>IndentGuidesToggle

"nnoremap ;; A;<c-m><esc>
"inoremap <Leader><Space> <esc>A;<esc>,
"inoremap <Leader><Space> <esc>A,
"nnoremap <Leader><Space> <esc>A,<esc>

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
inoremap <D-m>  <cr>


cnoreabbrev Ack Ack!
nnoremap <leader>a :Ack!<cr>
nnoremap <leader>r :Ack!<space>


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
"nmap <D-d> :Explore<CR>
nmap <D-m> <CR>
xnoremap <D-j> <C-j>
nmap <D-j> <C-j>
xnoremap <D-k> <C-k>
nmap <D-k> <C-k>


nnoremap <D-i> :CtrlPLine<CR>

nnoremap <leader>w <C-w>
nnoremap <leader><tab> :b#<cr> 
nnoremap <leader>bb :buffers<cr>:b<space> 

"find and replace 
":%s/the/foobar/g
"
"
"replace the word under cursor
nnoremap <leader>% :%s/\<<c-r><c-w>\>//g<left><left>

"autoclose tags
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>


"create a new buffer (save it with :w ./path/to/FILENAME)
nnoremap <leader>B :enew<cr>
"close current buffer
nnoremap <leader>bq :bp <bar> bd! #<cr>
"close all open buffers
nnoremap <leader>ba :bufdo bd!<cr>


"fzf-settings
"search project files
nnoremap <leader>f :FZF<cr>
"search project files by lines of code
nnoremap <leader>o :Lines<cr>
"search project files by tags (requirs ctags to be installed)
nnoremap <leader>t :Tags<cr>
"search all open files/buffers
nnoremap <leader>b :Buffers<cr>
"let g:fzf_commands_expect = 'alt-enter,ctrl-x'
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

" enable i and j key during autocomplete
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

"inoremap { {<CR>}<Esc>O<TAB>

