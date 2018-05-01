set nocompatible              " be iMproved, required
filetype off                  " required

set guifont=Monospace\ 12

"syntax highlighting
colorscheme space-vim-dark
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

filetype plugin on

let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_browser='Google Chrome'
let vim_markdown_preview_github=1
let g:NERDSpaceDelims = 1
noremap <C-k> :split $MYVIMRC<CR>
noremap kk :source $MYVIMRC<CR>
noremap qq i'<esc>ea'<esc>
noremap dq i"<esc>ea"<esc>
noremap ii i#{<esc>ea}<esc>
inoremap jk <esc>
map <C-d> :NERDTreeToggle<CR>
map <C-e> :FixWhitespace<CR>

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
