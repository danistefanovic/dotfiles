" Be IMproved
set nocompatible 

" NeoBundle
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'airblade/vim-gitgutter'

call neobundle#end()
filetype plugin indent on
NeoBundleCheck       " check if uninstalled bundles found on startup

" set colorscheme
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

set number           " enable line numbers
set tabstop=4        " a tab is 4 spaces
set shiftwidth=4
set expandtab
set hlsearch         " highlight search terms
set incsearch        " show search matches as you type
set ignorecase       " case-insensitive searching
