set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-endwise'
Plugin 'Raimondi/delimitMate'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'elzr/vim-json'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'roman/golden-ratio'
Plugin 'neomake/neomake'
Plugin 'elixir-lang/vim-elixir'
Plugin 'slashmili/alchemist.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'avakhov/vim-yaml'
Plugin 'roosta/srcery'
Plugin 'kudabux/vim-srcery-drk'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

execute "!figlet Welcome Waasi"

set guifont=Fira_Code:h12

set guifont=Monospace\ 12
" Linter
map <C-l> :copen<CR>
map <C-c> :cclose<CR>

let g:neomake_elixir_enabled_makers = ['credo']
autocmd! BufWritePost * Neomake

"syntax highlighting
colorscheme srcery
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
