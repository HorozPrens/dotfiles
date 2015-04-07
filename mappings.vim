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

