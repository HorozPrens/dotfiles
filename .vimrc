execute pathogen#infect()
syntax on
filetype plugin indent on

inoremap jj <Esc>   """ jj key is <Esc> setting
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h17
  elseif has("gui_win32")
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h14
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
set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.(git|hg|svn)$|node_modules|bower_components',
	\ 'file': '\v\.(exe|so|dll)$',
	\ }

let mapleader="-"
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
noremap <c-x><c-s> <c-c>:w<cr>a
nnoremap <leader>sv  :source $MYVIMRC<cr>
iabbrev @@ cihangirzengin@gmail.com
