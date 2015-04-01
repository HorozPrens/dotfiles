nmap <c-s> :w<CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>

nmap <F2> :update<CR>
vmap <F2> <Esc><F2>gv
imap <F2> <c-o><F2>

nmap go o<ESC>k
nmap g<C-o> O<ESC>j

nnoremap <F5> :GundoToggle<CR>

nmap <F2> :!start explorer /e,%:p:h <cr>

inoremap jj <Esc>   """ jj key is <Esc> setting

let mapleader=","
noremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>b :CtrlPBuffer <cr>
noremap <leader>ev :e ~/dotfiles/.vimrc<cr>
nnoremap <leader>sv  :source $MYVIMRC<cr>
nmap <silent> <Leader>ig <Plug>IndentGuidesToggle

imap ss <esc>a<Plug>snipMateNextOrTrigger
smap ss <Plug>snipMateNextOrTrigger


