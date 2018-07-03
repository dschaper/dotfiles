" vim-plug
" ---------------------------------------------------------
" Directory for vim plugins
call plug#begin('~/.vim/plugged')
Plug 'ekalinin/Dockerfile.vim'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
call plug#end()

" vim level configurations
" ---------------------------------------------------------
syntax on
filetype indent on
let leader="\\"
set wrap
set smartcase
set ignorecase			" ignore case while searching
set mouse=a			" allows mouse interaction within vim
set number 			" always show line number
set relativenumber 		" show line numbers relative to the current line
set cursorline			" highlight current cursor column
set showmatch 			" set show matching parenthesis
set hlsearch 			" enable search highlights
set completeopt-=preview	" deoplete: turn off preview window
set so=15			" cursor remains at ~center of the window
set shortmess+=c   		" Shut off completion messages
set belloff+=ctrlg 		" If Vim beeps during completion
set tabstop=4
set shiftwidth=4
set expandtab
set completeopt+=menuone
set mouse=a
set nohlsearch

" vim settings from this url to hide unnecessary crap
" https://www.reddit.com/r/unixporn/comments/5vke7s/osx_iterm2_tmux_vim/de2ubek/
" ---------------------------------------------------------
hi vertsplit ctermfg=235 ctermbg=235
hi LineNr ctermfg=232
hi StatusLine ctermfg=235 ctermbg=245
hi StatusLineNC ctermfg=235 ctermbg=237
hi Search ctermbg=58 ctermfg=15
hi Default ctermfg=1
hi clear SignColumn
hi SignColumn ctermbg=235
hi GitGutterAdd ctermbg=235 ctermfg=245
hi GitGutterChange ctermbg=235 ctermfg=245
hi GitGutterDelete ctermbg=235 ctermfg=245
hi GitGutterChangeDelete ctermbg=235 ctermfg=245
hi EndOfBuffer ctermfg=235 ctermbg=235

set fillchars=vert:\ ,stl:\ ,stlnc:\ 
set laststatus=2
set noshowmode

"  colorscheme
" ------------------------------------------------------
colorscheme gruvbox             " set colorscheme to gruvbox
set termguicolors               " allow truecolor
set background=dark
let g:gruvbox_italicize_comments = 1
let g:gruvbox_italic = 1
autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE
