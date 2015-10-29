set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'trusktr/seti.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"syntax highlighting
colorscheme seti 
syntax on
set hlsearch
 
"line numbers
set nu
 
"tabbing
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
 
"backspace key
set backspace=2
set background=dark

map <C-n> :NERDTreeToggle<CR>
