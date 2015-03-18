"  _______ _                     ____        _       _ _           
" |__   __(_)                   |  _ \      | |     | | |          
"    | |   _  __ _  __ _  ___   | |_) | ___ | |_ ___| | |__   ___  
"    | |  | |/ _` |/ _` |/ _ \  |  _ < / _ \| __/ _ \ | '_ \ / _ \ 
"    | |  | | (_| | (_| | (_) | | |_) | (_) | ||  __/ | | | | (_) |
"    |_|  |_|\__,_|\__, |\___/  |____/ \___/ \__\___|_|_| |_|\___/ 
"                   __/ |                                          
"                  |___/                                           
"

"==Vundle Stuff
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'

"=====UltiSnips
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

"=YouCompleteMe
"Plugin 'Valloric/YouCompleteMe'

"=====Nerd Tree
Plugin 'scrooloose/nerdtree'

"=====Commenter
Plugin 'scrooloose/nerdcommenter'

"========Linter
Plugin 'scrooloose/syntastic'

"========Themes
Plugin 'chriskempson/tomorrow-theme'
Plugin 'ajh17/Spacegray.vim'

Plugin 'LaTeX-Box-Team/LaTeX-Box'

Plugin 'kchmck/vim-coffee-script'

"====Git Gutter
Plugin 'airblade/vim-gitgutter'

"====Tabularize
Plugin 'godlygeek/tabular'

"=Auto-Complete
Plugin 'Shougo/neocomplcache.vim'

"=====Super-Tab
Plugin 'ervandew/supertab'

"=========CtrlP
Plugin 'kien/ctrlp.vim'

"==Surround.vim
Plugin 'tpope/vim-surround'

"=====Auto-Pair
Plugin 'jiangmiao/auto-pairs'

"===Hacker News
Plugin 'ryanss/vim-hackernews'

"==========Gist
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'

call vundle#end()
filetype plugin indent on
"=End of Vundle

"Mappings
let mapleader=","
no     <up>      ddkP "Moves the highlighted line up and down
no     <down>    ddp
map    <left>    <nop>
map    <right>   <nop>
imap   <left>    <nop>
imap   <right>   <nop>
imap   <up>      <nop>
imap   <down>    <nop>

"General
set autoread
set incsearch      "Move cursor to search result as you type
set autoindent     "Autoindentation
set smartindent
set shiftwidth=2
set expandtab
set ignorecase     "Search is not case sensitive
set scrolloff=20   "Always keep a space of 20 lines from bottom
set wildmenu       "Wildmenu on
set wildmode=longest,full
set backspace=eol,start,indent 

if exists("&wildignorecase")
  set wildignorecase
endif

"Splits
set splitbelow
set splitright

"Cosmetic
syntax on
colorscheme Tomorrow-Night-Eighties
set guifont=Inconsolata:h17
set number         "Line Numbers
set ts=4           "Smaller tab size
set tabstop=2
set cmdheight=2    "Height of the cmd line
set lbr            "Linebreak on 500 chars
set tw=500
set cursorline     "Cursor line highlighted
set hlsearch       "Highlight search result
set showcmd        "Command in bottom bar
set linespace=0    "No spacing between lines
set showmatch      "Show matching parenthesis and brackets
set term=screen-256color
set t_Co=256

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

"For UltiSnips
let g:UltiSnipsSnippetsDir = '~/.vim/bundle/vim-snippets/UltiSnips/'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

