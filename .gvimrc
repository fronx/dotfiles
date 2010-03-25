set nocompatible

filetype on
filetype plugin on
filetype indent on

syntax on
syntax sync fromstart

set guifont=Bitstream\ Vera\ Sans\ Mono:h13

set ts=2 sw=2 et

set autowriteall
set noai nocindent
set hlsearch
set laststatus=0
set writebackup
set backup backupdir=$HOME/.vim/backup
set directory=/tmp
set ttyfast
set number ruler
set backspace=2     " allow backspacing over everything in insert mode
set mouse=a " allows marking/pasting with the mouse also on 'not gui vim'

set go-=T

" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.pyc,.class,.jar

set showcmd
set showmatch
set fileformats=unix,dos,mac

set viminfo=!,'50,\"1000,:150,n~/.vim/viminfo
set fileformat=unix history=50
set digraph

set lines=55
set columns=100

" side scrolling from :h wrap
set sidescroll=5
set listchars+=precedes:<,extends:>

:au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

:colorscheme twilight

if has("gui_macvim")
  let macvim_skip_cmd_opt_movement = 1
  set fuoptions=maxvert,maxhorz
endif
