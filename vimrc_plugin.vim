set nocompatible              " be improved, required
filetype off                  " required

" set the runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()
" alternatively, pass a path where vundle should install plugins
"call vundle#begin('~/some/path/here')

if has('python')
" only installed YouComplete if vim is compiled with python support.
  Plugin 'Valloric/YouCompleteMe'
endif

Plugin 'gmarik/vundle.vim'
Plugin 'altercation/vim-colors-solarized'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic.git'
Bundle "burnettk/vim-angular"
Plugin 'vim-scripts/tComment.git'
Plugin 'kien/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'elzr/vim-json'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'marijnh/tern_for_vim'
Plugin 'Raimondi/delimitMate'

" let vundle manage vundle, required

" all of your plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" to ignore plugin indent changes, instead use:
"filetype plugin on
"
" brief help
" :pluginlist       - lists configured plugins
" :plugininstall    - installs plugins; append `!` to update or just :pluginupdate
" :pluginsearch foo - searches for foo; append `!` to refresh local cache
" :pluginclean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for faq
" put your non-plugin stuff after this line



