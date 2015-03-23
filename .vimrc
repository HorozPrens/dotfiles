execute pathogen#infect()
syntax on
filetype plugin indent on

inoremap jj <Esc>   """ jj key is <Esc> setting
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Monaco:h17
  elseif has("gui_win32")
	  "    set guifont=Consolas:h14:cANSI    
  endif
endif
:set encoding=utf-8
:set number
:map <c-a> 0
:map <c-e> $
:colorscheme corn
set laststatus=2
set t_Co=256
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16'
let g:airline#extensions#tabline#enabled = 1
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h14

