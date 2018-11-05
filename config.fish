set -x VIM_APP_DIR /Users/cihangir/Applications/MacVim-snapshot-73/
alias t "tmux -2"
alias l "ls -all"
set -gx GOROOT /usr/local/go
# set -gx GOPATH ~/projects/go
set -gx GOPATH /Users/cihangir/go
set -gx PATH $PATH $GOROOT/bin
set -gx PATH $PATH $GOPATH/bin
# set -gx PATH $PATH /Users/cihangir/Applications/solr-5.2.1/bin
set -gx PATH $PATH /Applications/CMake.app/Contents/bin
alias emacs "/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
#set -gx DYLD_LIBRARY_PATH $DYLD_LIBRARY_PATH  /Users/cihangir/projects/c++libs/boost_1_61_0/build/lib
#set -gx DYLD_LIBRARY_PATH $DYLD_LIBRARY_PATH  /Users/cihangir/projects/c++libs/poco/poco-1.7.3-all/lib/Darwin/x86_64
