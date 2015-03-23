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
    set guifont=Consolas:h11:cANSI
  endif
endif

:set number
:map <c-a> 0
:map <c-e> $
