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
set omnifunc=syntaxcomplete#Complete " override built-in C omnicomplete with C++ OmniCppComplete plugin
let OmniCpp_GlobalScopeSearch   = 1
let OmniCpp_DisplayMode         = 1
let OmniCpp_ShowScopeInAbbr     = 0 "do not show namespace in pop-up
let OmniCpp_ShowPrototypeInAbbr = 1 "show prototype in pop-up
let OmniCpp_ShowAccess          = 1 "show access in pop-up
let OmniCpp_SelectFirstItem     = 1 "select first item in pop-up
set completeopt=menuone,menu,longest
let g:html_indent_inctags = "html,body,head,tbody"
let g:clang_user_options='|| exit 0'
let g:clang_complete_auto = 1
let g:clang_complete_copen = 1
let g:clang_exec = '/usr/bin/clang' 
let g:clang_user_options = '2> NUL || exit 0"'
let g:clang_library_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/'
