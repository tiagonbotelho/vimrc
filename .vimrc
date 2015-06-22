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

"=======Airline
Plugin 'bling/vim-airline'

"======Polyglot
Plugin 'sheerun/vim-polyglot'

"========Expand
Plugin 'terryma/vim-expand-region'

"=====UltiSnips
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

"===EndComplete
Plugin 'tpope/vim-endwise'

"===IndentLines
Plugin 'Yggdroot/indentLine'

"==ActionScript
Plugin 'jeroenbourgois/vim-actionscript'

"=====Nerd Tree
Plugin 'scrooloose/nerdtree'

"=====Commenter
Plugin 'scrooloose/nerdcommenter'

"========Themes
Plugin 'chriskempson/tomorrow-theme'
Plugin 'altercation/vim-colors-solarized'

"===ImprovedCPP
Plugin 'octol/vim-cpp-enhanced-highlight'

"====Git Gutter
Plugin 'airblade/vim-gitgutter'

"====Tabularize
Plugin 'godlygeek/tabular'

"=====Super-Tab
Plugin 'ervandew/supertab'

"=========CtrlP
Plugin 'kien/ctrlp.vim'

"==Surround.vim
Plugin 'tpope/vim-surround'

"=====Auto-Pair
Plugin 'jiangmiao/auto-pairs'

"=========Rails
Plugin 'tpope/vim-rails'

"=========Scala
Plugin 'derekwyatt/vim-scala'

"==========Gist
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'

call vundle#end()
filetype plugin indent on
"=End of Vundle

"Mappings
let mapleader="\<Space>"
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
vmap <Leader>y "+y
vmap <Leader>d "+d
vmap <Leader>p "+p
vmap <Leader>P "+P
nmap <Leader>p "+p
nmap <Leader>P "+P

nmap <Leader><Leader> V

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]`

map q: :q

vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

nnoremap <CR> G
nnoremap <BS> gg

no     <up>      ddkP 
no     <down>    ddp
map    <left>    <nop>
map    <right>   <nop>
map Q <nop>
imap   <left>    <nop>
imap   <right>   <nop>
imap   <up>      <nop>
imap   <down>    <nop>

let g:ctrlp_use_caching = 0
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
    let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
    let g:ctrlp_prompt_mappings = {
                \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
                \ }
endif

"General
set autoread
set incsearch      "Move cursor to search result as you type
set autoindent     "Autoindentation
set smartindent
set shiftwidth=4
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

"Gitgutter
let g:gitgutter_enabled = 1
highlight GitGutterAdd guibg=clear
highlight GitGutterChange guibg=clear
highlight GitGutterDelete guibg=clear
highlight GitGutterChangeDelete guibg=clear

"For UltiSnips
let g:UltiSnipsSnippetsDir = '~/.vim/bundle/vim-snippets/UltiSnips/'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"Line Identation
let g:indentLine_color_term = 239
let g:indentLine_char = '|'


"Airline
set laststatus=2
let g:airline_theme="tomorrow"
let g:airline_powerline_fonts=1

