execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on


call plug#begin('~/.vim/plugged')
    Plug 'liuchengxu/vim-clap'
" Build the extra binary if cargo exists on your system.
    Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }
" The bang version will try to download the prebuilt binary if cargo does not exist.
    Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }

    Plug 'pangloss/vim-javascript'
    "Plug 'mxw/vim-jsx'

    Plug 'yuezk/vim-js'
    Plug 'maxmellon/vim-jsx-pretty'

    "Plug 'ctrlpvim/ctrlp.vim'
"    set rtp+=/usr/local/opt/fzf
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'

    Plug 'preservim/nerdtree'
    Plug 'majutsushi/tagbar'
    Plug 'preservim/nerdcommenter'     

    Plug 'mileszs/ack.vim'

    Plug 'haya14busa/is.vim'

    Plug 'tpope/vim-vinegar'
    

call plug#end()


source ~/dotfiles/mappings.vim 
source ~/dotfiles/settings.vim 
source ~/dotfiles/golang.vim 

"if $SHELL=='/usr/local/bin/fish'
  set shell=/bin/sh
"endif

