if has("gui_win32")
	set guioptions-=m  "remove menu bar
endif
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set shiftwidth=2
set tabstop=2

let g:html_indent_inctags= "html,body,head,tbody"
"set regexpengine=1
syntax enable

set encoding=utf-8
set number
colorscheme corn
set laststatus=2
set t_Co=256
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16'
let g:airline#extensions#tabline#enabled = 1

let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.(git|hg|svn)$|node_modules|bower_components',
	\ 'file': '\v\.(exe|so|dll|o|obj|d)$',
	\ }

"some font settings
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h17
  elseif has("gui_win32")
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h13
  endif
endif
let xml_use_xhtml=1
let g:used_javascript_libs = 'underscore,backbone,react,jquery'
