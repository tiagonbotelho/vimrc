"  _______ _                     ____        _       _ _           
" |__   __(_)                   |  _ \      | |     | | |          
"    | |   _  __ _  __ _  ___   | |_) | ___ | |_ ___| | |__   ___  
"    | |  | |/ _` |/ _` |/ _ \  |  _ < / _ \| __/ _ \ | '_ \ / _ \ 
"    | |  | | (_| | (_| | (_) | | |_) | (_) | ||  __/ | | | | (_) |
"    |_|  |_|\__,_|\__, |\___/  |____/ \___/ \__\___|_|_| |_|\___/ 
"                   __/ |                                          
"                  |___/                                           
"

set nocompatible
filetype off
filetype plugin on

"==Vundle Stuff
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'

"=====Nerd Tree
Bundle "scrooloose/nerdtree"

"=====Commenter
Bundle "scrooloose/nerdcommenter"

"========Linter
Bundle "scrooloose/syntastic"

"========Themes
Bundle "chriskempson/tomorrow-theme"
Bundle "ajh17/Spacegray.vim"

Bundle "LaTeX-Box-Team/LaTeX-Box"

Bundle "kchmck/vim-coffee-script"

"====Git Gutter
Bundle "airblade/vim-gitgutter"

"====Tabularize
Bundle "godlygeek/tabular"

"=====Snip Mate
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"

"=Auto-Complete
Bundle "Shougo/neocomplcache.vim"

"=====Super-Tab
Bundle "ervandew/supertab"

"=========CtrlP
Bundle "kien/ctrlp.vim"

"==Surround.vim
Bundle "tpope/vim-surround"

"=====Auto-Pair
Bundle "jiangmiao/auto-pairs"

"===Hacker News
Bundle "ryanss/vim-hackernews"

"==========Gist
Bundle "mattn/webapi-vim"
Bundle "mattn/gist-vim"

call vundle#end()
"=End of Vundle

"Mappings
let mapleader=","
no <down> ddp
no <up> ddkP

filetype plugin indent on
syntax on

"Cosmetic
colorscheme Tomorrow-Night-Eighties
set guifont=Inconsolata:h17
set number         "Line Numbers
set ts=4           "Smaller tab size
set softtabstop=2
set cmdheight=2    "Height of the cmd line
set lbr            "Linebreak on 500 chars
set tw=500
set cursorline     "Cursor line highlighted
set wildmode=list:longest,full
set hlsearch       "Highlight search result
set showcmd        "Command in bottom bar
set linespace=0    "No spacing between lines
set showmatch      "Show matching parenthesis and brackets

"General
set incsearch      "Move cursor to search result as you type
set autoindent     "Autoindentation
set smartindent
set shiftwidth=2
set expandtab
set ignorecase     "Search is not case sensitive
set paste          "Pasting is improved
set wildmenu       "Wildmenu on
set scrolloff=20   "Always keep a space of 20 lines from bottom

" Gitgutter
let g:gitgutter_enabled = 1
highlight GitGutterAdd guibg=clear
highlight GitGutterChange guibg=clear
highlight GitGutterDelete guibg=clear
highlight GitGutterChangeDelete guibg=clear

"For syntastic linter optimal performance
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
