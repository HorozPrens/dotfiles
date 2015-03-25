if has('win32') || has('win64')
  set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif

execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on
filetype indent on
filetype plugin on

set shiftwidth=2

inoremap jj <Esc>   """ jj key is <Esc> setting
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h17
    cd ~/projects/go/src/bitbucket.org/cihangiray/notx
  elseif has("gui_win32")
    cd d:\go\src\bitbucket.org\cihangiray\notx
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h13
  endif
endif
set encoding=utf-8
set number
colorscheme corn
set laststatus=2
set t_Co=256
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16'
let g:airline#extensions#tabline#enabled = 1
let mapleader="n"
noremap <leader>d :NERDTreeToggle<CR>
"set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.(git|hg|svn)$|node_modules|bower_components',
	\ 'file': '\v\.(exe|so|dll)$',
	\ }

let mapleader="-"
noremap <leader>ev :e ~/.vimrc<cr>
nnoremap <silent> <c-x><c-s> <c-c>:w<cr>

nnoremap <leader>sv  :source $MYVIMRC<cr>
nmap <silent> <Leader>ig <Plug>IndentGuidesToggle

let mapleader=","
nnoremap <leader>b :CtrlPBuffer <cr>
nmap <F2> :!start explorer /e,%:p:h <cr>
"let g:ycm_server_keep_logfiles = 1
"let g:ycm_server_log_level = 'debug'
"let g:ycm_warning_symbol = '.'
"let g:ycm_error_symbol = '..'
"let g:ycm_server_use_vim_stdout = 1
