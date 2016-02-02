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
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-endwise'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'elzr/vim-json'
Plugin 'thoughtbot/vim-rspec'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'elixir-lang/vim-elixir'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'scrooloose/syntastic'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ngmy/vim-rubocop'
Plugin 'roman/golden-ratio'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Welcome message
echo 'Hello master Waasi (>.<)'

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


let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_browser='Google Chrome'
let vim_markdown_preview_github=1
noremap <C-k> :split $MYVIMRC<CR>
noremap kk :source $MYVIMRC<CR>
noremap qq i'<esc>ea'<esc>
noremap dq i"<esc>ea"<esc>
noremap ii i#{<esc>ea}<esc>
inoremap jk <esc>
map <C-d> :NERDTreeToggle<CR>
map <C-e> :FixWhitespace<CR>
nnoremap cc :call NERDComment(0,"toggle")<CR>

:autocmd BufWritePost *.rb :call RunLastSpec()

let g:vimrubocop_config = '~/.vim/rubocop.yml'

let g:NERDTreeUseSimpleIndicator = 1

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
