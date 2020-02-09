if has("gui_win32")
	set guioptions-=m  "remove menu bar
endif
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

let g:html_indent_inctags= "html,body,head,tbody"
set regexpengine=1
syntax enable

set encoding=utf-8
"set number
"colorscheme corn 
colorscheme apprentice 
set laststatus=2
set t_Co=256
let g:airline_powerline_fonts = 1
let g:airline_theme = 'badwolf'
let g:airline#extensions#tabline#enabled = 1
set nowrap 
hi VertSplit       ctermfg=244 ctermbg=232   cterm=bold
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/venv
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.(git|hg|svn)$\|node_modules\|bower_components\|venv',
	\ 'file': '\v\.(exe\|so\|dll\|o\|obj\|d\|map)$',
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

set incsearch
set ignorecase
"set hlsearch

set tabstop=4
set shiftwidth=4
set expandtab
set completeopt=menuone

if has("gui_win32")
    let g:tagbar_ctags_bin = 'C:\ctags\ctags.exe'
endif


"clap
" `:Clap quick_open` to open some dotfiles quickly.
let g:clap_provider_quick_open = {
      \ 'source': ['~/.vimrc', '~/.spacevim', '~/.bashrc', '~/projects/webprojects/note-2020', '~/dotfiles'],
      \ 'sink': 'e',
      \ }

set autochdir
set number
map <D-g> <esc>


